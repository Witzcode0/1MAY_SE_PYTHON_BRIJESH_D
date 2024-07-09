#include <stdio.h>

int main() {
    
    // A B C && || 
    // T T T T  T
    // F T T F  T
    // T F T F  T
    // T T F F  T
    // F F F F  F
    
    // A !
    // T F
    // F T
    
    int con1 = 0; // F
    int con2 = 1; // T
    int con3 = 10 < 20; // T
    int con4 = 20 == 20; // T
    int con5 = 50 > 0; // T
    // int res = con1 && con2 && con3;
    // int res = !con1 && con2 && con3;
    // int res = con1 && con5 && con3;
    // int res = con1 || con5 || con3;
    printf("%d", res);
    
    
    

    return 0;
}