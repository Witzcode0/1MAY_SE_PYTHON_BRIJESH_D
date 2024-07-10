"""
operators are special symbols or keywords that perform operations on variables and values. They allow you to manipulate data and variables in various ways, such as performing arithmetic computations, comparing values, or combining strings. Python supports several types of operators:

1] Arithmetic Operators :
Arithmetic operators are used to perform mathematical operations like addition, subtraction, multiplication, division, etc.

2] Comparison Operators
Comparison operators are used to compare two values and return a Boolean result (True or False).

3] Logical Operators
Logical operators are used to combine conditional statements and return a Boolean result.

4] Assignment Operators
Assignment operators are used to assign values to variables.

5] Bitwise Operators
Bitwise operators act on operands as if they were strings of binary digits.

6] Membership Operators
Membership operators are used to test if a sequence (like a string, list, or tuple) contains a certain value.

7] Identity Operators
Membership operators are used to test if a sequence (like a string, list, or tuple) contains a certain value.
"""

a = 10
b = 3

addition = a + b        # Addition
subtraction = a - b     # Subtraction
multiplication = a * b  # Multiplication
division = a / b        # Division
modulus = a % b         # Modulus (remainder of division)
exponentiation = a ** b # Exponentiation

# res = 10/2
res = 10//2 # floor division
# print(res)

a = 10
b = 3

greater_than = a > b      # Greater than
less_than = a < b         # Less than
equal_to = a == b         # Equal to
not_equal_to = a != b     # Not equal to
greater_than_or_equal_to = a >= b  # Greater than or equal to
less_than_or_equal_to = a <= b     # Less than or equal to

x = True
y = False

logical_and = x and y   # Logical AND
logical_or = x or y     # Logical OR
logical_not = not x     # Logical NOT

c = 5
d = 10
e = 10
a = 10     # Simple assignment
b += 5     # Add AND (equivalent to b = b + 5)
c -= 2     # Subtract AND (equivalent to c = c - 2)
d *= 3     # Multiply AND (equivalent to d = d * 3)
e /= 4     # Divide AND (equivalent to e = e / 4)


a = 10    # Binary representation: 1010
b = 4     # Binary representation: 0100

bitwise_and = a & b     # Bitwise AND
bitwise_or = a | b      # Bitwise OR
bitwise_xor = a ^ b     # Bitwise XOR
bitwise_complement = ~a # Bitwise NOT
bitwise_left_shift = a << 2   # Left shift by 2 bits
bitwise_right_shift = a >> 2  # Right shift by 2 bits

# Membership operators

my_list = [1, 2, 3, 4, 5]
my_tuple = (1, 2, 3, 4, 5)
my_string = "Hello, World!"

membership_in_list = 3 in my_list # True

membership_in_tuple = 3 in my_tuple # True

membership_in_string = 'l' in my_string # True
membership_not_in_string = 'l' not in my_string # False

my_string = "Python"
print('tho' in my_string)
print('Tho' in my_string)

# Identity operators

my_list1 = [1, 2, 3]
my_list2 = [1, 2, 3]

# identity_equal = my_list1 is my_list2 # false
identity_equal = my_list1 is not my_list2 # false

# print(identity_equal)

# print(id(my_list1))
# print(id(my_list2))