"""
string - immutable

what is string?

string is a sequence of characters. In Python, a string is a built-in data type used to store a sequence of characters. Strings are immutable, meaning they cannot be changed once they are created.

syntax:

empty_string = ""
string_name = "Hello, World!"
string_name = str()
string_name = 'Hello, World!'
string_name = '''Hello, World!'''

"""

# Creating a string with characters



# string length

string_length = len("Hello, World!")

# print(string_length)  # Output: 13

# String type

string_type = type("Hello, World!")

# print(string_type)  # Output: <class'str'>

# Indexing(+/-): Accessing individual characters in a string using their index position.

first_character = "Hello, World!"[0]

# print(first_character)  # Output: H

# Slicing(+/-): Extracting a portion of a string using a range of index positions.

substring = "Hello, World!"[0:5]

# print(substring)  # Output: Hello

# Concatenation: Combining two or more strings into a single string using the '+' operator.

string1 = "Hello"

string2 = "World!"

concatenated_string = string1 + string2

# print(concatenated_string)

# string replica

replicated_string = "Hello, World!" * 3

# print(replicated_string)

# string methods

# print(dir("hello"))

name = "Python programming"

# print(name.lower())

# print(name.upper())

# print(name.capitalize())

# print(name.title())

# print(name.swapcase())

# print(name.replace("programming", "scripting"))

title = "     Python programming     "
# print(len(title))

# print(title.center(25,"-"))

# print(title.strip())
# print(title.lstrip())
# print(title.rstrip())

password = "hsjdkd2132@"

# print(password.isalnum())

# digits = "43243"

# print(digits.isdigit())

name = "skdkjhcishf"

# print(name.islower())


# String formatting: Inserting variables into a string using the format() function or f-string syntax.

# name = "John"

# age = 30

# print("My name is {} and I am {} years old.".format(name, age))

# print("My name is {0} and I am {1} years old.".format(name, age))

# print(f"My name is {name} and I am {age} years old.")

# print("My name is %s and I am %d years old." % (name, age))

# String formatting with precision and decimal places




# print("{:.2f}".format(3.141592653589793))

# String formatting with alignment and padding

# print("{:^20}".format("Hello, World!"))

# print("{:<20}".format("Hello, World!"))

# print("{:>20}".format("Hello, World!"))

otp = "123456"

print(f"Your OTP is: {otp}")