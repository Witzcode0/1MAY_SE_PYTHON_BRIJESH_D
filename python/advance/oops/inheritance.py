"""
What is inheritance in python?

Inheritance is a mechanism in which a new class is created from an existing class. The new class is called the derived class or child class, and the existing class is called the base class or parent class.

Inheritance allows the new class to inherit the properties and methods of the base class, making it easier to create reusable code. It promotes code organization and modularity.

Syntax:

class ParentClass:
    # class body for ParentClass

class ChildClass(ParentClass):
    # class body for ChildClass

Types of Inheritance:

Single Inheritance: A child class can inherit properties and methods from only one parent class.

Multiple Inheritance: A child class can inherit properties and methods from multiple parent classes. The child class inherits properties and methods in the order they are listed in the parent classes.

Multilevel Inheritance: A child class can inherit properties and methods from a parent class, which in turn inherits properties and methods from another parent class. This is known as "multiple levels of inheritance."

hierarchical: A child class can inherit properties and methods from multiple parent classes, but they are organized in a hierarchical manner. The child class inherits properties and methods from the closest parent class first, followed by the remaining parent classes in the order they are listed. This is known as "hierarchical inheritance."

Hybrid Inheritance: A child class can inherit properties and methods from multiple parent classes, but it can also inherit properties and methods from other child classes. This is known as "hybrid inheritance."

Method Resolution Order (MRO): The order in which the child class inherits properties and methods from its parent classes is determined by the method resolution order (MRO). The MRO determines the order in which the base classes are searched for attributes and methods. By default, Python uses the C3 algorithm, which is known for its efficiency and simplicity.

Inheritance Advantages:

Reusability: Inheritance allows the new class to inherit the properties and methods of the base class, making it easier to create reusable code. This reduces the need for code duplication and promotes code organization.

Modularity: Inheritance promotes modularity by allowing the new class to inherit properties and methods from multiple parent classes, making it easier to create hierarchical structures and manage dependencies.

Code Organization: Inheritance allows the new class to inherit properties and methods in a hierarchical manner, making it easier to organize and manage code.

Maintainability: Inheritance allows the new class to inherit properties and methods from multiple parent classes, making it easier to maintain and update the code.
"""
# single inheritance
class A:
    def a(self):
        print("Class A method a()")

class B(A):
    def b(self):
        print("Class B method b()")

obj_of_b = B()
# obj_of_b.a()
# obj_of_b.b()

# multiple inheritance

class C:
    def c(self):
        print("Class C method c()")

class D(A, C):
    def d(self):
        print("Class D method d()")

object_of_d = D()

# object_of_d.a()
# object_of_d.c()

# multilevel inheritance

class E:
    def e(self):
        print("Class E method e()")

class F(D, E):
    def f(self):
        print("Class F method f()")

object_of_f = F()

# object_of_f.a()
# object_of_f.c()
# object_of_f.d()
# object_of_f.e()
# object_of_f.f()

# print(dir(object_of_f))

# hierarchical inheritance

class G:
    def g(self):
        print("Class G method g()")

class H(F, G):
    def h(self):
        print("Class H method h()")

object_of_h = H()
# print(H.__mro__)
# print(H.mro())

# object_of_h.a()
# object_of_h.c()
# object_of_h.d()
# object_of_h.e()
# object_of_h.f()
# object_of_h.g()
# object_of_h.h()

# print(dir(object_of_h))








