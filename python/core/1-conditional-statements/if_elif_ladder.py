"""
if elif ladder : An "if-elif-else ladder" is a construct in programming (including Python) that allows you to evaluate multiple conditions sequentially. It provides a way to check multiple conditions and execute a block of code as soon as one of the conditions is true, skipping the rest of the ladder.

syntax :

if condition1:
    # block of code to execute if condition1 is true
elif condition2:
    # block of code to execute if condition1 is false and condition2 is true
elif condition3:
    # block of code to execute if condition1 and condition2 are false and condition3 is true
...
else:
    # block of code to execute if all above conditions are false

"""

# # Example 1
# x = 75

# if x > 90:
#     grade = 'A'
# elif x > 80:
#     grade = 'B'
# elif x > 70:
#     grade = 'C'
# elif x > 60:
#     grade = 'D'
# else:
#     grade = 'F'

# print(f"Your grade is {grade}")


# Example 2
# temperature = float(input("Enter the temperature in Celsius: "))

# if temperature > 37.5:
#     print("You have a fever.")
# elif temperature > 35.5:
#     print("Your temperature is normal.")
# else:
#     print("You are hypothermic.")
