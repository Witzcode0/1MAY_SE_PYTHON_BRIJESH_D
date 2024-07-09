#include <iostream>
using namespace std;

int main() {
    int score[5] = {
        67, 89, 56, 90, 64
    };
    
    int len = sizeof(score)/sizeof(score[0]);
    for(int start = 1; start<=len; start++){
        int s = score[start-1];
        if(s >= 80){
            cout<<"First class"<<endl;
        }else if(s >= 60){
            cout<<"second class"<<endl;
        }else if(s >= 40){
            cout<<"Third class"<<endl;
        }else{
            cout<<"Sorry you are faield"<<endl;
        }
    }
    
    return 0;
}
