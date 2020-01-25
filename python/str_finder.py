import os

file_list = os.listdir()
full_string = input()

def remove_leading_space(line):
    char_index = 0
    while line[char_index] == ' ' or line[char_index] == '\t':
        char_index += 1
    return line[char_index:]

for filename in file_list:

    if filename.endswith("py") or filename.startswith("stb"):
        continue

    file = open(filename)

    for line_number, line in enumerate(file):
        if full_string in line:
            print("%s:%d" % (filename, line_number + 1), remove_leading_space(line))

    file.close()
