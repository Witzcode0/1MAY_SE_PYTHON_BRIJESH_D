"""
a variable is a named reference to a value stored in memory. It is used to store data that can be referenced and manipulated throughout a program's execution. Variables in Python are dynamically typed, meaning you do not need to declare the type of a variable when you create one.

Variable Naming:

Variables can have almost any name, but they must follow these rules:
Must start with a letter (a-z, A-Z) or underscore (_).
Can contain letters, digits (0-9), and underscores (_).
Case-sensitive (myVar and myvar are different variables).
Should not be a Python keyword (reserved word).

Variable Assignment:

syntax :
variable_name = value

Example:
age = 34
"""

# variable declaration and assignment

age = 34

# variable access

# print(age)  # Output: 34

# variable reassignment

age = 35

# print(age)  # Output: 35

# variable deletion

# del age

# print(age)  # Output: NameError: name 'age' is not defined

# num1, num2 = 30, 40

# num1, num2 = num2, num1

# print(num1, num2)

# # swap numbers
# num2 = num1

# num1 = num2

# print(num1, num2)

# how to get input from the user
# name = input("Enter your name: ") # that return always string value

# print("Hello", name)

# name, age = input("Enter your name and age sep by comma: ").split(",")
# print(name, age)

# brijesh17 : ValueError: not enough values to unpack (expected 2, got 1)
# brijesh|17 : ValueError: not enough values to unpack (expected 2, got 1)

# num1 = 10
# num2 = 10

# print(id(num1), id(num2))

# num1 = 10
# num2 = 20

# print(id(num1), id(num2))