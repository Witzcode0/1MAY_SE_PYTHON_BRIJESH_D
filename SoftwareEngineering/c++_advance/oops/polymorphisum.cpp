
// Polymorphism in C++ is a fundamental concept in object-oriented programming (OOP) that allows objects of different types to be treated as objects of a common base type. It is one of the four primary pillars of OOP, along with encapsulation, inheritance, and abstraction. Polymorphism enables a single interface to represent different underlying forms (data types).

// There are two main types of polymorphism in C++:

// Compile-time Polymorphism (Static Polymorphism)
// Run-time Polymorphism (Dynamic Polymorphism)

// 1. Compile-time Polymorphism
// Compile-time polymorphism is achieved using function overloading and operator overloading. It is called compile-time polymorphism because the function to be executed is determined at compile time.

// Function Overloading
// Function overloading allows multiple functions with the same name to exist, as long as they have different parameters (number, types, or both).

#include <iostream>
using namespace std;

class Print {
public:
    void display(int i) {
        cout << "Integer: " << i << endl;
    }

    void display(double f) {
        cout << "Float: " << f << endl;
    }

    void display(string s) {
        cout << "String: " << s << endl;
    }
};

int main() {
    Print print;
    print.display(5);
    print.display(3.14);
    print.display("Hello, World!");

    return 0;
}


operator overloading:
#include <iostream>
using namespace std;

class Complex {
private:
    float real;
    float imag;

public:
    Complex() : real(0), imag(0) {}
    Complex(float r, float i) : real(r), imag(i) {}

    Complex operator + (const Complex &obj) {
        Complex temp;
        temp.real = real + obj.real;
        temp.imag = imag + obj.imag;
        return temp;
    }

    void display() {
        cout << real << " + " << imag << "i" << endl;
    }
};

int main() {
    Complex c1(3.3, 4.4), c2(1.1, 2.2);
    Complex c3 = c1 + c2;
    c3.display();

    return 0;
}

// Run-time Polymorphism
// Run-time polymorphism is achieved using inheritance and virtual functions. It is called run-time polymorphism because the function call is resolved at runtime. This is also known as dynamic binding or late binding.

// Virtual Functions
// A virtual function is a member function in a base class that you expect to override in derived classes. When you refer to a derived class object using a pointer or a reference to the base class, you can call a virtual function for that object and execute the derived class's version of the function.

#include <iostream>
using namespace std;

class Base {
public:
    virtual void show() {
        cout << "Base class show function" << endl;
    }

    void display() {
        cout << "Base class display function" << endl;
    }
};

class Derived : public Base {
public:
    void show() override {
        cout << "Derived class show function" << endl;
    }

    void display() {
        cout << "Derived class display function" << endl;
    }
};


int main() {
    Base* basePtr;
    Derived derivedObj;
    basePtr = &derivedObj;
    
    basePtr->show();
    basePtr->display();
    

    return 0;
}
