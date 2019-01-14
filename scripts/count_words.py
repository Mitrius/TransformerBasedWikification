#!/home/mitrius/anaconda3/bin/python
from sys import argv

if __name__ == "__main__":
    found = set()
    with open(argv[1], "r") as f_in:
        for line in f_in:
            line_splitted = line.split(' ')
            for word in line_splitted:
                word_cleaned = ''.join(
                    ch for ch in word if ch.isalnum())
                found.add(word)
    print(len(found))
