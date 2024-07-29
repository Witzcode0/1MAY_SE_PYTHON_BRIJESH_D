"""
What is function?

A function is a block of code that performs a specific task and can be reused. It takes input parameters, performs the required operations, and returns the output.

Syntax:

def function_name(parameter1, parameter2,..., parameterN):
    # code block to execute

call function

function_name(argument1, argument2,..., argumentN)

there are two different types of function:

1. Built-in functions: Python provides built-in functions like print(), input(), len(), etc.

2. User-defined functions: You can define your own functions to perform specific tasks.

"""

# a = 10
# b = 20
# c = a + b

# print(c)

# a = 30
# b = 40
# c = a + b

# print(c)

# def add_numbers(num1, num2):
#     print(num1 + num2)

# add_numbers(10, 20)
# add_numbers(30, 40)

# # function to calculate the sum of two numbers

# def sum_of_numbers(a, b):
#     return a + b

# result = sum_of_numbers(10, 20)
# print(result)


# types of parameters
# -------------------
# positional arguments
# default/keyword arguments
# variable length arguments

# def add(a, b, c):
#     print(a + b + c)

# # add(10,20) # TypeError: add() missing 1 required positional argument: 'c'

# add(10,20,30)

# def bill(tomato=120, potato=80):
#     return tomato + potato

# # print(bill())
# print(bill(20))

# *args - value
# **kwargs - key-value
# def add_numbers(*nums):
#     # print(type(nums))
#     print(sum(nums))

# add_numbers(10,20,30,40,1000)

# def bill(**products):
#     total = 0
#     for product, price in products.items():
#         print(f"{product}: {price}")
#         total += price
#     print("----------------------------------------------------------------")
#     return f"Total amount is: {total}"

# print(bill(tomato=120, potato=80, book=20, pen=100))

#----------------------------------------------------------------

# function scope :

# x = 20

# def test():
#     global x  # using global keyword to modify the value of x
#     x = 10
#     print(x)

# test()
# print(x)

#----------------------------------------------------------------

cube = lambda x:x*x*x

# print(cube(3))

# map, filter

numbers = [1, 2, 3, 4, 5]


# map function
# print(list(map(cube, numbers)))


# filter function
def even_odd(num):
    if num % 2 == 0:
        return 'even'
    else:
        return 'odd'

numbers = [1, 2, 3, 4, 5]
output = list(map(even_odd, numbers))

# print(output)


def even_odd(num):
    if num % 2 == 0:
        return 'even'
    else:
        return 'odd'

numbers = [1, 2, 3, 4, 5]
output = [even_odd(num) for num in numbers]

# print(output)


# def is_even(num):
#     return num % 2 == 0

# def is_odd(num):
#     return num % 2 != 0

# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  # Sample list of numbers
# even_numbers = list(filter(is_even, numbers))
# print(even_numbers)

# odd_numbers = list(filter(is_odd, numbers))
# print(odd_numbers)



# def outer_function():
#     def inner_function():
#         return "from inner function"
#     return inner_function()
    
# print(outer_function())

# decorators
def upper_case(func):
    def wrapper():
        result = func()
        return result.upper()
    return wrapper
@upper_case
def test():
    return input("Enter something...")

print(test())