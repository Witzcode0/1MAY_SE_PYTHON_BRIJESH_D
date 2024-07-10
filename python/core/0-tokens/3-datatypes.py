"""
a datatype is a classification identifying the type of data that a variable or object can hold. It determines the operations that can be performed on the data and the methods of storage and representation. Python supports several built-in data types, including:

Numeric Types:

int: Integer type, which represents whole numbers.
float: Floating-point type, which represents decimal numbers.
complex: Complex numbers, represented as a + bj where a and b are floats and j is the imaginary unit.

Sequence Types:

str: String type, used to store sequences of characters.
list: List type, which stores ordered sequences of items.
tuple: Tuple type, which stores ordered sequences of items (immutable).
range: Represents an immutable sequence of numbers generated during runtime.

Mapping Type:

dict: Dictionary type, which stores key-value pairs.

Boolean Type:

bool: Boolean type, which represents truth values (True or False).

None Type:

None: Represents the absence of a value.

Set Type:

set: Set type, which stores unordered collections of unique elements.

Binary Types:

bytes: Binary type, which represents sequences of bytes.

Bytearray Type:

bytearray: Bytearray type, which represents mutable sequences of bytes.

Memory Management:

Memory management is handled automatically by Python, allowing you to focus on writing code instead of managing memory.


"""

# num1 = 10

# print(type(num1))  # Output: <class 'int'>

# num2 = 10.5

# print(type(num2))  # Output: <class 'float'>

# num3 = 10 + 2j

# print(type(num3))  # Output: <class 'complex'>

# my_str = "Hello, World!"

# print(type(my_str))  # Output: <class 'str'>

# my_list = [1, 2, 3, 4, 5]

# print(type(my_list))  # Output: <class 'list'>

# my_tuple = (1, 2, 3, 4, 5)

# print(type(my_tuple))  # Output: <class 'tuple'>

# my_range = range(1, 11)

# print(type(my_range))  # Output: <class 'range'>

# my_dict = {"name": "John", "age": 30}

# print(type(my_dict))  # Output: <class 'dict'>

# my_bool = True

# print(type(my_bool))  # Output: <class 'bool'>

# my_none = None

# print(type(my_none))  # Output: <class 'NoneType'>

# my_set = {1, 2, 3, 4, 5}

# print(type(my_set))  # Output: <class 'set'>

# my_bytes = b"Hello, World!"

# print(type(my_bytes))  # Output: <class 'bytes'>

# my_bytearray = bytearray("Hello, World!", encoding="utf-8")

# print(type(my_bytearray))  # Output: <class 'bytearray'>


# Type Casting ----------------------------------------------------------------

# implicit conversions : Implicit conversions (also known as automatic type conversions) happen automatically during expressions and operations when Python converts one data type to another without any explicit instruction from the user. Python performs these conversions based on certain rules and priorities to ensure that operations are performed correctly.

num1 = 10

num2 = 30.5

num1 = num1 + num2

print(type((num1))) # Output: <class 'float'>

# explicit conversions : Explicit conversions (also known as type casting or type conversion) occur when the user manually converts one data type to another using predefined functions or constructors provided by Python. This is done when the user wants to enforce a specific type on a variable or object. Examples of explicit conversions include:

num1 = str(10)

print(type(num1)) # Output: <class'str'>

num2 = int(30.5)

print(type(num2)) # Output: <class 'int'>

num3 = float(True)

print(type(num3)) # Output: <class 'float'>

num4 = complex(10, 20)

print(type(num4)) # Output: <class 'complex'>
