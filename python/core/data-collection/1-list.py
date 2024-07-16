"""
List - Mutable, Ordered, duplicate values are allowed,  indexing, slicing.

In Python, a list is a built-in data type used to store an ordered collection of items. Lists are versatile and can hold a variety of data types, including integers, floats, strings, and even other lists.

syntax:
empty_list = []
list_name = [item1, item2, item3,...]
list_name = list()
"""

# Creating a list with elements

list1 = ['apple', 'banana', 'cherry']
# print(list1)  

# find the length of the list

# print(len(list1))

# Check datatype

# print(type(list1))

# Accessing list:

# print(list1)

# Access elements from the list using indexing(+/-)
list1 = ['apple', 'banana', 'cherry']

# print(list1[0])
# print(list1[1])
# print(list1[2])

# print(list1[-1])
# print(list1[-2])
# print(list1[-3])

# access elements from the list using slice(+/-)

# print(list1[0:2])

# print(list1[1:])

# print(list1[:2])

# print(list1[::-1])
# ['apple', 'banana', 'cherry']
# print(list1[-2: 0: -1])

# print(list1[::-2])

mummy_list = ['apple', 'banana']
my_list = ['drink', 'chocolate', 'apple']

# print(mummy_list + my_list)
# print(mummy_list * 2)

# Updating list elements

list1[0] = 'orange'

# print(list1)

# Adding elements to list

# List methods
# print(dir(list1))



nums = [1,2,3,4,5]
new_list = [6,7,8]
# nums.append(new_list)  # append element at the end of the list

# nums.extend(new_list)  # extend list by adding elements from another list

# nums.insert(2, new_list)  # insert element at the specified position

# nums.clear() # remove

# nums.pop() # remove last element from list

# nums.pop(3) # remove specific element

# nums.remove(3)

# del nums[0]

# print(nums)

# '', '', '', '', '', '', '', '', '', 'reverse', 'sort'

# copied_list = nums.copy()
# print(nums)
# print(copied_list)
# print(id(nums))
# print(id(copied_list))

nums = [1,1,1,2,3,4,2,2,1,4]

# print(nums.count(1))

# nums.index(4)

# nums.sort()

# print(nums)

# nums.reverse()

# print(nums)

mix = [10, 34.5, 34 + 6j, ['21``', 'adsads']]

print(mix[-1][-1])