// 2^7 2^6 2^5 2^4 2^3 2^2 2^1 2^0
// 128 64  32  16  8   4   2   1

// 0001
// 0111
// 0110
// 3 - Dec - Bin -  0011
// 5 - Dec - Bin -  0101
// 17 - Dec - Bin -  10001

// 0 - F, 1 -T

// 3 5 & | ^
// 0 0 0 0 0
// 0 1 0 1 1
// 1 0 0 1 1
// 1 1 1 1 0

// 00000111 - 7b
// 7 << 1
// 00001110 - 14b
// 14 << 3
// 01110000

// 0011
// 0110

// 0001

#include <stdio.h>

int main() {
    
    int num1 = 3, num2 = 5;
    
    // int res = num1 & num2;
    // int res = num1 | num2;
    // int res = num1 ^ num2;
    
    // int res = num1 << 1;
    int res = num1 >> 1;
    
    printf("%d", res);
    

    return 0;
}