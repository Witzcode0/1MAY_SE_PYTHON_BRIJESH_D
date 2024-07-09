"""
an identifier is a name given to entities like variables, functions, classes, modules, etc. It serves as a unique identifier for that entity within the scope where it is defined. Here are the key rules for identifiers in Python:

Valid Characters: An identifier can only contain alphanumeric characters (a-z, A-Z, 0-9) and underscores (_). The first character of an identifier cannot be a digit.

Case Sensitivity: Python identifiers are case-sensitive. For example, myVar, MyVar, and myvar are all considered different identifiers.

Reserved Words: You cannot use reserved words (keywords) as identifiers. These include keywords like if, else, for, while, def, class, import, True, False, etc.

Naming Convention:

Use descriptive names for identifiers to improve code readability (e.g., total_count instead of tc).
Class names should use the CapWords convention (e.g., MyClass).
Function and variable names should use the lowercase_with_underscores convention (e.g., my_function, my_variable).
Scope: The scope of an identifier determines where it can be accessed. For example, variables defined inside a function have local scope, while those defined outside have global scope within that module.

Here are some examples of valid identifiers:

my_variable
count
PI

calculate_total

And examples of invalid identifiers:

2count (starts with a digit)
100_price
100$price (contains a special character)
100+price (contains an arithmetic operator)
if (keyword)
my-variable (contains a hyphen)
"""