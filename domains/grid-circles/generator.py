#! /usr/bin/env python3
# -*- coding: utf-8 -*-
import itertools
import os
import random

from tarski.fstrips import create_fstrips_problem, language, DelEffect, AddEffect
from tarski.io import FstripsWriter
from tarski.theories import Theory
from tarski.syntax import forall, implies

_CURRENT_DIR_ = os.path.dirname(os.path.realpath(__file__))


def generate_propositional_domain(gridsize, num_rewards, num_blocks):
    lang = language(theories=[Theory.EQUALITY])
    problem = create_fstrips_problem(domain_name='grid-circles-strips',
                                     problem_name="grid-circles-{}x{}".format(gridsize, gridsize),
                                     language=lang)

    cell_t = lang.sort('cell')
    at = lang.predicate('at', cell_t)
    reward = lang.predicate('reward', cell_t)
    blocked = lang.predicate('blocked', cell_t)
    adjacent = lang.predicate('adjacent', cell_t, cell_t)
    visited = lang.predicate('visited', cell_t)

    # Create the actions
    from_ = lang.variable("from", cell_t)
    to = lang.variable("to", cell_t)
    problem.action(name='move', parameters=[from_, to],
                   precondition=adjacent(from_, to) & at(from_) & ~blocked(to),
                   effects=[DelEffect(at(from_)),
                            AddEffect(at(to)),
                            AddEffect(visited(to))])

    rng = range(0, gridsize)
    coordinates = list(itertools.product(rng, rng))

    def cell_name(x, y):
        return "c_{}_{}".format(x, y)

    # Declare the constants:
    _ = [lang.constant(cell_name(x, y), cell_t) for x, y in coordinates]

    # Declare the adjacencies:
    adjacent_coords = [(a, b, c, d) for (a, b), (c, d) in itertools.combinations(coordinates, 2)
                       if abs(a-c) + abs(b-d) == 1]

    for a, b, c, d in adjacent_coords:
        problem.init.add(adjacent, cell_name(a, b), cell_name(c, d))
        problem.init.add(adjacent, cell_name(c, d), cell_name(a, b))


    # for (x0, y0), (x1, y1) in itertools.combinations(coordinates, 2):
    #     if abs(x0-x1) + abs(y0-y1) == 1:
    #         problem.init.add(adjacent, cell_name(x0, y0), cell_name(x1, y1))

    initial_position = cell_name(0, 0)

    # The initial position is already visited, by definition
    problem.init.add(at, initial_position)
    problem.init.add(visited, initial_position)

    # Set some random rewards and cell blocks:
    if num_rewards + num_blocks > len(coordinates) - 1:
        raise RuntimeError("Number of rewards and blocks higher than total number of available cells!")

    cd = coordinates[1:]  # Clone the list of coordinates excluding the initial position
    random.shuffle(cd)

    i = 0
    while i < num_blocks:
        x, y = cd[i]
        problem.init.add(blocked, cell_name(x, y))
        i += 1

    while i < num_rewards + num_blocks:
        x, y = cd[i]
        problem.init.add(reward, cell_name(x, y))
        i += 1

    # Set the problem goal
    c = lang.variable("c", cell_t)
    problem.goal = forall(c, implies(reward(c), visited(c)))

    return problem


def main():

    for gridsize in [3, 5, 7, 10]:
        num_blocks_and_rewards = gridsize
        problem = generate_propositional_domain(gridsize, num_blocks_and_rewards-2, num_blocks_and_rewards-2)
        writer = FstripsWriter(problem)
        writer.write(domain_filename=os.path.join(_CURRENT_DIR_, "domain_strips.pddl"),  # We can overwrite the domain
                     instance_filename=os.path.join(_CURRENT_DIR_, "instance_strips_{}.pddl".format(gridsize)))


if __name__ == "__main__":
    main()