// 1] single inheritance

// #include<iostream>
// using namespace std;

// class A{
//     public:
//     void a(){
//         cout<<"I am from class A"<<endl;
//     }  
// };
// class B: public A{
//     public:
//     void b(){
//         cout<<"I am from class B";
//     }  
// };

// int main(){
    
//     B obj;
//     obj.a();
//     obj.b();
    
//     return 0;
// }

// 2] multi-level inheritance

// #include<iostream>
// using namespace std;

// class A{
//     public:
//     void a(){
//         cout<<"I am from class A"<<endl;
//     }  
// };
// class B: public A{
//     public:
//     void b(){
//         cout<<"I am from class B"<<endl;
//     }  
// };
// class C: public B{
//     public:
//     void c(){
//         cout<<"I am from class C";
//     }  
// };

// int main(){
    
//     C obj;
//     obj.a();
//     obj.b();
//     obj.c();
//     return 0;
// }

// 3] multiple inheritance
// #include<iostream>
// using namespace std;

// class A{
//     public:
//     void a(){
//         cout<<"I am from class A"<<endl;
//     }  
// };
// class B{
//     public:
//     void b(){
//         cout<<"I am from class B"<<endl;
//     }  
// };
// class C: public A, public B{
//     public:
//     void c(){
//         cout<<"I am from class C";
//     }  
// };

// int main(){
    
//     C obj;
//     obj.a();
//     obj.b();
//     obj.c();
//     return 0;
// }

// hirarchical inheritance

#include<iostream>
using namespace std;

class Shape{
    public:
    void shape(){
        cout<<"i am shape";
    }
};

class Shape2d:public Shape{
    public:
    void shape2d(){
        cout<<"I am from shape2d";
    }
};

class Square:public Shape2d{
    public:
    void square(){
        cout<<"I am from shape square";
    }
};
class Circle:public Shape2d{
    public:
    void circle(){
        cout<<"I am from shape circle";
    }
};

class Shape3d:public Shape{
    public:
    void shape3d(){
        cout<<"I am from shape3d";
    }
};

class Cube:public Shape3d{
    public:
    void cube(){
        cout<<"I am from cube";
    }
};

int main(){
    
    Cube c3d;
    c3d.cube();
    c3d.shape3d();
    c3d.shape();
    
    return 0;
}