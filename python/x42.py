import sys

def main(args):
    """Implements X42"""
    if len(args) > 1 and args[1] == "42":
        sys.stderr.write("It depends!\n")
        sys.exit(42)
    sys.stdout.write("What is the meaning of life?\n")
    sys.exit(0)

if __name__ == "__main__":
    main(sys.argv)
