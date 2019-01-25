#!/home/mitrius/anaconda3/bin/python
from sys import argv

if __name__ == "__main__":
    found = set()
    with open(argv[1], "r") as f_in:
        for line in f_in:
            line_out = line.split(',')[1].strip()
            line_splitted = line_out.split(' ')
            for word in line_splitted:
                found.add(word)
    print(len(found))
