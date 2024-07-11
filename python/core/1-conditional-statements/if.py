"""
if : if statements are used to conditionally execute blocks of code based on boolean expressions. 

Syntax :
if (expression):
    # code block to be executed if the expression is True
"""

# Example 1: Simple if statement

# x = 10

# if x > 5:
#     print("x is greater than 5")

# Example 2: Nested if statement

# x = 10

# if x > 5:
#     print("x is greater than 5")
#     if x > 10:
#         print("x is greater than 10")

# Example 3: 

balance = 10000
withdraw = 5000

if withdraw <= balance:
    balance -= withdraw
    print(balance)
    print("Withdrawal successful")

