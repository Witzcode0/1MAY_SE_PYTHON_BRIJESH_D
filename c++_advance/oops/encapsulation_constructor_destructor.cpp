#include <iostream>
using namespace std;
class car{
    // data member
    public:
    string name = "BMW";
    string model;
    
    // member function
    // void info(){
    //     cout<<"Car information: "<<endl;
    //     cout<<"Name : "<<name<<endl;
    //     cout<<"Model : "<<model<<endl;
    // }
    
    // constructor
    car(string m){
        model = m;
        cout<<"Car information: "<<endl;
        cout<<"Name : "<<name<<endl;
        cout<<"Model : "<<model<<endl;
    }
    // destructor
    ~car(){
        cout<<"I am a destructor"<<endl;
    }
};

int main() {
    car c1("x1");
    // c1.model = "x1";
    // c1.info();
    
    car c2("x2");
    // c2.model = "x2";
    // c2.info();

    return 0;
}