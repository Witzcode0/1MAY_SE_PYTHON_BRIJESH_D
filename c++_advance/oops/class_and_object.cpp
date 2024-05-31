#include <iostream>
using namespace std;

// syntax: 
// class class_name{
    // property of class (data member) 
    
    // method of class (member function)
// }

class user{
    public:
        // data member
        string username = "brijesh07";
        string email="brijesh.gondaliya07@gmail.com";
        string password = "Test@123";
     
    // member function
        void display(){
            cout<<"Username : "<<username<<endl;
            cout<<"Email : "<<email<<endl;
            cout<<"Passwprd : "<<password<<endl;
        }
};

int main() {

    // class_name obj_name; // create object
    user b;
    cout<<b.username<<endl;
    cout<<b.email<<endl;
    cout<<b.password<<endl;
    // b.display();

    return 0;
}