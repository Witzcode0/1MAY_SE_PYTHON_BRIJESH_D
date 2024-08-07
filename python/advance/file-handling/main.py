"""
What is file-handling?

File-handling is the process of reading and writing data to and from files, such as text files, binary files, and databases. It allows you to perform various operations on files, such as reading, writing, appending, and deleting data.

Python provides built-in functions and libraries for file-handling, such as open(), read(), write(), close(), and more. You can use these functions to read, write, and manipulate files in your Python programs.

Here are some common file-handling operations in Python:

1. Open a file: Use the open() function to open a file for reading, writing, or appending. Specify the file name and mode (e.g., 'r', 'w', 'a') as arguments.

2. Read data from a file: Use the read() method to read the contents of a file. If no argument is provided, read() reads the entire file. You can also specify the number of characters to read using the size parameter.

3. Write data to a file: Use the write() method to write data to a file. Pass the data as a string to the write() method.

4. Close a file: After you have finished reading or writing to a file, use the close() method to close the file. This ensures that any changes made to the file are saved and the file is properly closed.
"""

# create file

file_name = "sample.txt"

# file = open(file_name, 'r')

# print(file.tell())

# file.seek(7)
# print(file.tell())

# print(file.read())

# open(file_name, 'x')

#write data into the file
# data = "This is a python programming."
# file.write(data)

# lines = ['This is a line - 1\n', 'This is a line - 2\n', 'This is a line - 3\n', 'This is a line - 4\n', 'This is a line - 5\n', 'this is a new line']
# file.writelines(lines)


# read data from the file
# print(file.read())
# print(file.read(6))

# print(file.readline())
# print(file.readline())
# print(file.readline())
# print(file.readline())
# print(file.readline())
# print(file.readline())


# print(file.readlines())

# file.close()

# print(file.read())

# import os
# import uuid

# file_name = f"{str(uuid.uuid4())}.txt"

# os.system(f'type nul > {file_name}')

# os.system('py test.py')

# os.remove(r'C:\xampp\htdocs\PYTHONMaster\batch\1MAY_SE_PYTHON_BRIJESH_D\python\advance\file-handling\req1.txt')

# os.rename('req.txt', f"{str(uuid.uuid4())}.txt")

# dir1

# zinal.png
# zinal.png

# with open(r'F:\molmeh\class\1MAY_SE_PYTHON_BRIJESH_D\python\advance\file-handling\example.txt', 'r') as file:
#     data = file.read()
#     print(data)
