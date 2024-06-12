#include <iostream>
using namespace std;

template <class T, class U = char>
class A{
    T x;
    U y;

public:
    A() {
        cout<<"Constructor called"<<endl;
    }
};

int main() {
    A<char> a;
    A<int, double> b;

    return 0;
}
