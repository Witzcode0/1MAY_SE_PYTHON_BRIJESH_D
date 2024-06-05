//  an abstract class is a class that cannot be instantiated on its own and is intended to be subclassed. An abstract class is defined by having at least one pure virtual function. A pure virtual function is a function declared within a base class that has no implementation in that class and is meant to be overridden in derived classes.

// Key Points about Abstract Classes
// Cannot Instantiate: You cannot create an object of an abstract class. Attempting to do so will result in a compilation error.

// Pure Virtual Functions: An abstract class must have at least one pure virtual function. These functions make the class abstract and enforce that derived classes provide their own implementation.

// Inheritance: Abstract classes are designed to be base classes. Derived classes must override all pure virtual functions to be instantiated. If a derived class does not override all pure virtual functions, it remains an abstract class itself.

// Usage: Abstract classes are often used to define interfaces in C++. They allow defining a common interface for all the derived classes, ensuring that they implement the required methods.

#include <iostream>
using namespace std; 

class Shape {
public:
    virtual void area() = 0; // Pure virtual function
};

class Circle : public Shape {
public:
    void area() override {
        int r = 10;
        int area_ = 3.14 * r * r; 
        cout << area_ << endl;
    }
};

class Triangle : public Shape {
    public:
    void area() override {
        int base = 10;
        int height = 10;
        int area_ = 0.5 * base * height;
        cout << area_;
    }
};
int main() {
   
    Circle c1;
    c1.area();
    
    Triangle t1;
    t1.area();
    return 0;
}