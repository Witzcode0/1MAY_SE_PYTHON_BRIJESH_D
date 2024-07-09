// a friend function is a function that is not a member of a class but has the right to access the private and protected members of the class. The friend function is declared within the class that it will be friends with, using the friend keyword. This allows the friend function to access the class's private data members and functions as if it were a member of the class.

// Declaration: A friend function is declared inside a class with the friend keyword. However, the actual definition of the friend function is done outside the class.

// Access: Friend functions have access to the private and protected members of the class they are friends with.

// Not a Member: Friend functions are not member functions of the class. They do not have a this pointer.

// Use Cases: Friend functions are useful when two or more classes need to work closely together, and there is a need for one class to access the private members of another class.

#include <iostream>
using namespace std; 
class BrijeshATM{
    private:
    int pin;
    
    public:
    void setPin(int p){
        pin = p;
    }
    friend int myFriend(BrijeshATM obj);
};

int myFriend(BrijeshATM obj){
    return obj.pin;
}
int main() {
   BrijeshATM b;
   b.setPin(1112);
    cout<< "brijesh ATM pin is :"<<myFriend(b);
    return 0;
}