# Alphebitize all the lines in sss_sounds.py

import os


def alphabetize(file_path):
    with open(file_path, "r") as file:
        lines = file.readlines()
        lines.sort()
    with open(file_path, "w") as file:
        for line in lines:
            file.write(line)


def main():
    alphabetize("sss_sounds/sss_sounds.py")


if __name__ == "__main__":
    main()
