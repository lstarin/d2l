#include <cassert>
#include <iostream>
#include <string>
#include <algorithm>

#include <boost/program_options/options_description.hpp>
#include <boost/program_options/parsers.hpp>
#include <boost/program_options/variables_map.hpp>

#include <blai/sample.h>
#include <blai/utils.h>
#include <blai/matrix.h>
#include <blai/transitions.h>
#include <cnf/generator.h>
#include <common/utils.h>


using namespace std;
namespace po = boost::program_options;

//! Command-line option processing
struct Options {
    enum class Encoding {
        Basic,
        D2Tree,
        TransitionSeparation
    };

    std::string workspace;
    bool prune_redundant_states;
    bool verbose;
    Encoding encoding;

    std::vector<unsigned> enforced_features;

    Options(int argc, const char **argv) {
        po::options_description description("Generate a weighted max-sat instance from given feature "
                                            "matrix and transition samples.\n\nOptions");

        description.add_options()
                ("help,h", "Display this help message and exit.")
                ("verbose,v", "Show extra debugging messages.")

                ("workspace,w", po::value<std::string>()->required(),
                        "Directory where the input files (feature matrix, transition sample) reside, "
                        "and where the output .wsat file will be left.")

                ("prune-redundant-states,p",
                        "Whether to prune those states that appear redundant for the given feature pool.")

                ("enforce-features,e", po::value<std::string>()->default_value(""),
                 "Comma-separated (no spaces!) list of IDs of feature we want to enforce in the abstraction.")

                ("encoding", po::value<std::string>()->default_value("basic"),
                     "The encoding to be used (options: {basic, d2tree, separation}).")
                ;

        po::variables_map vm;

        try {
            po::store(po::command_line_parser(argc, argv).options(description).run(), vm);

            if (vm.count("help")) {
                std::cout << description << "\n";
                exit(0);
            }
            po::notify(vm);
        } catch (const std::exception &ex) {
            std::cout << "Error with command-line options:" << ex.what() << std::endl;
            std::cout << std::endl << description << std::endl;
            exit(1);
        }

        workspace = vm["workspace"].as<std::string>();
        prune_redundant_states = vm.count("prune-redundant-states") > 0;
        verbose = vm.count("verbose") > 0;

        auto enc = vm["encoding"].as<std::string>();
        if (enc == "basic") encoding = Encoding::Basic;
        else if (enc == "d2tree") encoding = Encoding::D2Tree;
        else if  (enc == "separation") encoding = Encoding::TransitionSeparation;
        else throw po::validation_error(po::validation_error::invalid_option_value, "encoding");


        // Split the comma-separated list of enforced feature IDS
        auto enforced_str = vm["enforce-features"].as<std::string>();
//        std::cout << "\nenforced_str: " << enforced_str << std::endl;
        if (!enforced_str.empty()) {
            std::stringstream ss(enforced_str);
            while (ss.good()) {
                std::string substr;
                getline(ss, substr, ',');
                if (!substr.empty()) {
                    enforced_features.push_back((unsigned) atoi(substr.c_str()));
                }
            }
        }
//        for (auto x:enforced_features) std::cout << "\n" << x << std::endl;
    }

    bool use_d2tree() const { return encoding == Encoding::D2Tree; }
    bool use_separation_encoding() const { return encoding == Encoding::TransitionSeparation; }
};

std::pair<bool, CNFWriter> write_maxsat(std::ostream &os, CNFGenerator& gen, const Options& options) {
    if (options.use_separation_encoding()) {
        return gen.write_separation_maxsat(os, options.enforced_features);
    } else {
        return gen.write_basic_maxsat(os, options.enforced_features, options.use_d2tree());
    }
}

int main(int argc, const char **argv) {
    float start_time = Utils::read_time_in_seconds();
    Options options(argc, argv);

    // Read feature matrix
    std::string matrix_filename = options.workspace + "/feature-matrix.dat";
    std::cout << Utils::blue() << "reading" << Utils::normal() << " '" << matrix_filename << std::endl;
    auto ifs_matrix = get_ifstream(matrix_filename);
    auto matrix = Sample::FeatureMatrix::read_dump(ifs_matrix, options.verbose);
    ifs_matrix.close();

    // Read transition data
    std::string transitions_filename = options.workspace + "/sat_transitions.dat";
    std::cout << Utils::blue() << "reading" << Utils::normal() << " '" << transitions_filename << std::endl;
    auto ifs_transitions = get_ifstream(transitions_filename);
    auto transitions = Sample::TransitionSample::read_dump(ifs_transitions, options.verbose);
    ifs_transitions.close();

    auto sample = std::make_unique<Sample::Sample>(std::move(matrix), std::move(transitions));
    std::cout << "Training sample: " << *sample << std::endl;

    // If indicated by the user, prune those states that appear redundant for the given feature pool
    if (options.prune_redundant_states) {
        auto isomorphisms = compute_redundant_states(*sample);

        std::cout << isomorphisms.size() << " / " << sample->matrix().num_states()
                  << " were found to be isomorphic and were discarded" << std::endl;

        std::unordered_set<unsigned> nonisomorphic;
        for (unsigned s = 0; s < sample->transitions().num_states(); ++s) {
            if (isomorphisms.find(s) == isomorphisms.end()) nonisomorphic.insert(s);
        }

        sample = std::unique_ptr<Sample::Sample>(sample->resample(nonisomorphic));

        std::cout << "Pruned training sample: " << *sample << std::endl;
    } else {
        std::cout << "No pruning of redundant states performed" << std::endl;
    }

    float preprocess_time = Utils::read_time_in_seconds() - start_time;

    // We write the MaxSAT instance progressively as we generate the CNF. We do so into a temporary "*.tmp" file
    // which will be later processed by the Python pipeline to inject the value of the TOP weight, which we can
    // know only when we finish writing all clauses
    CNFGenerator gen(*sample);
    auto wsatstream = get_ofstream(options.workspace + "/theory.wsat.tmp");

    auto res = write_maxsat(wsatstream, gen, options);

    wsatstream.close();

    // Write some characteristics of the CNF to a different file
    const auto& writer = res.second;
    auto topstream = get_ofstream(options.workspace + "/top.dat");
    topstream << writer.top() << " " << writer.nvars() << " " << writer.nclauses();
    topstream.close();

    float total_time = Utils::read_time_in_seconds() - start_time;
    std::cout << "Preprocessing time: " << preprocess_time << std::endl;
    std::cout << "Total-time: " << total_time << std::endl;
    std::cout << "CNF Theory: "  << writer.nvars() << " vars + " << writer.nclauses() << " clauses" << std::endl;
    std::cout << "Clause breakdown: " << std::endl;
    std::cout << "\tSelected(f): " <<  gen.n_selected_clauses << std::endl;
    std::cout << "\tD2-definition: " <<  gen.n_d2_clauses << std::endl;
    std::cout << "\tBridge: " <<  gen.n_bridge_clauses << std::endl;
    std::cout << "\tGoal-distinguishing: " <<  gen.n_goal_clauses << std::endl;
    std::cout << "\tDead-end-distinguishing: " <<  gen.n_deadend_clauses << std::endl;
    std::cout << "\tTOTAL: " <<  gen.n_selected_clauses + gen.n_d2_clauses + gen.n_bridge_clauses + gen.n_goal_clauses + gen.n_deadend_clauses << std::endl;

    bool unsat = res.first;
    if(unsat) {
        // The generation of the CNF might have already detected unsatisfiability
        std::cout << Utils::warning() << "CNF theory is UNSAT" << std::endl;
        return 1;
    }
    return 0;
}
