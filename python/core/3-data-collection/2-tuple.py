"""
Tuple - immutable, ordered, duplicate values are allowed, indexing, slicing

In Python, a tuple is a built-in data type used to store an ordered collection of items. Tuples are versatile and can hold a variety of data types, including integers, floats, strings, and even other tuples.

syntax:
    empty_tuple = ()
    tuple_name = (item1, item2, item3,...)
    tuple_name = tuple()
    comma_tuple = 1, 2, 3

"""
# Creating a tuple with elements
my_tuple = (1, 2, 3, 4, 5)
# print(my_tuple)  # Output: (1, 2, 3, 4, 5)

# Accessing elements of a tuple

# Indexing(-/+)

# print(my_tuple[1])

# # Slicing (-/+)

# print(my_tuple[1:4])  # Output: (2, 3, 4)

# # Negative indexing

# print(my_tuple[-1])

# print(my_tuple[-3:])  # Output: (3, 4, 5)

# my_tuple[2] = "hello"

# print(my_tuple)  # TypeError: 'tuple' object does not support item assignment

# print(dir(my_tuple))

# print(my_tuple.count(4))
# print(my_tuple.index(4))


# print(list(my_tuple))