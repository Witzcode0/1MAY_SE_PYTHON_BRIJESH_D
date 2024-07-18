"""
dict : innutable, unindexed,duplicate values are not alloed.

dict_name = {
    'key-1': 'value-1',
    'key-2': 'value-2',
    'key-3': 'value-3',
}
"""

# # Accessing elements from a dictionary
# contact = {
#     'John Doe': '123-456-7890',
#     'John Doe': '123-4545-7890',
#     'Jane Doe': '987-654-3210',
#     'Alice Johnson': '555-555-5555',
# }

# # Accessing the value of a key
# print(contact['John Doe'])

# print(dir(contact))



# products = {
#     'itesm': ['tomato', 'potato']
# }

# products['fruit'] = ['apple', 'banana']

# print(products)

# items = ['tomato', 'potato', 'onion']
# price = 30

# products = dict()
# print(products.fromkeys(items, price))

# car = {
#     'brand': 'Tesla',
#     'model': 'Model X',
#     'year': 2021,
#     'color': 'black',
#     'doors': 4,
#     'transmission': 'automatic',
#     'fuel_type': 'electric',
# }

# print(car.get('doors'))
# print(car.keys())
# print(car.values())
# print(car.items())

# car.pop('doors')
# car.popitem()
# car.setdefault('color', 'red')
# new_car = {
#     'price': 30,
# }

# car.update(new_car)

# print(car)

# print(car.keys())
# print(car.values())
# print(car.items())

# for key in car.keys():
#     print(key, car[key])

# for value in car.values():
#     print(value)

# for key, value in car.items():
#     print(key, value)