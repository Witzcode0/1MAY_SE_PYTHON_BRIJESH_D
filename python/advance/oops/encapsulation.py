"""
What is encapsulation?

Encapsulation is the process of bundling data and the methods that operate on that data into a single unit called an object. Encapsulation allows data to be hidden from the outside world and can be accessed and modified only through the defined methods.

Encapsulation provides several benefits, such as:

1. Code reusability: Encapsulated code can be reused in different parts of the program without modifying the implementation.

2. Data protection: Encapsulated data can be made private, preventing unauthorized access and modification.

3. Improved maintainability: Encapsulated code is easier to understand and modify, as it follows a single, well-defined interface.

In Python, encapsulation can be achieved using the following techniques:

1. Private variables and methods: Use double underscore prefix (__var_name) to make variables and methods private. Python automatically adds a leading underscore to the name of private variables and methods, making them inaccessible from outside the class.

2. Getter and setter methods: Define getter and setter methods to access and modify the encapsulated data. Getter methods retrieve the value of the data, while setter methods update the value of the data.

Examples:

# class Car:
#     def __init__(self, make, model, year):
#     self.__make = make # private
#     self.__model = model
#     self.__year = year

    # def get_make(self):
    #     return self.__make

    # def set_make(self, make):
    #     return self.__make = make

    # def get_model(self):
    #     return self.__model

"""
class ATM:
    def __init__(self, pin):
        self.__pin = pin # private

    def set_pin(self, pin):
        if len(pin) == 4 and pin.isdigit():
            self.__pin = pin
        else:
            raise ValueError("Pin must be a 4-digit number")

    def get_pin(self):
        return self.__pin
        
obj = ATM('1123')
obj.set_pin('1234')
print(obj._ATM__pin)
# print(obj.get_pin())
