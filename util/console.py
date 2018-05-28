import logging
import shutil
import time


def get_terminal_size():
    return shutil.get_terminal_size()


def print_header(text, indent=0):
    term_s = shutil.get_terminal_size()
    n_free = min(max((term_s.columns - indent*8), 0), 80)
    sep = "="*n_free
    print_lines([sep, text, sep], indent)


def print_lines(text, indent=0):
    text = [text] if isinstance(text, str) else text
    idt = "\t"*indent
    print(idt + ("\n"+idt).join(text))


def log_time(f, msg=None):
    logging.info(msg)
    t0 = time.process_time()
    result = f()
    logging.info("\t-> Elapsed CPU time: {0:.2f}".format(time.process_time() - t0))
    return result