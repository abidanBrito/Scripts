import os

file_list = os.listdir()
line_count = 0
file_count = 0

for filename in file_list:
    if filename.endswith("c") \
    or filename.endswith("cc") \
    or filename.endswith("cpp") \
    or filename.endswith("ino") \
    or filename.endswith("hh") \
    or filename.endswith("h") \
    and not filename.startswith("stb"):

        file = open(filename)

        for line in file:
            line_count += 1

        file.close()
        file_count += 1

header = "DIRECTORY LOC COUNTER"
header_length = len(header)
print ("-" * header_length)
print(header)
print("-" * header_length)
print('\nLine count = ', line_count, '\nFile count = ', file_count)
