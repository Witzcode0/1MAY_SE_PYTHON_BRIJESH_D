"""
What is Polymorphism in python?

Polymorphism is the ability of an object to take on many forms or take on different forms. In Python, polymorphism allows objects of different classes to be treated as objects of a common superclass.

Polymorphism allows code to be written in a more flexible and reusable way, as it allows different objects to respond to the same method call in different ways. Polymorphism promotes code organization, modularity, and flexibility by enabling objects to be used in a hierarchical or compositional manner.

Polymorphism is achieved through:

1. Method overloading: A class defines multiple methods with the same name but different parameters. Method overloading allows a class to provide different implementations of a method that have the same name but different parameters. This enables the class to handle different scenarios or use cases without changing the method signature.

2. Method overriding: A subclass provides its own implementation of a method that is already defined in its superclass. Method overriding allows a subclass to provide a different behavior for a method that is already defined in the superclass.


Syntax:
# method over riding
class ParentClass:
    def method(self):
        // block of code

class ChildClass(ParentClass):
    def method(self):
        // block of code that overrides the method in the superclass
"""

# class math:
#     def add(self, a, b):
#         return a + b
    
#     def add(self, a, b, c):
#         return a + b + c
    
# obj_ol = math()
# print(obj_ol.add(10, 20, 20))


# class math:
#     def add(self, a = None, b = None, c = None):
#         if a is not None and b is not None and c is not None:
#             return a + b + c
#         elif a is not None and b is not None:
#             return a + b
#         else:
#             raise ValueError("At least two numbers must be provided")
        

# obj_ol = math()
# print(obj_ol.add(10, 20, 30))


class parent:
    def greet(self):
        print("Hello from parent")

class child(parent):
    def greet(self):
        super().greet()  # call parent's greet method
        print("Hello from child")

obj_c = child()

obj_c.greet() # prints: Hello from child