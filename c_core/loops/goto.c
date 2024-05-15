/*

A goto statement is used to transfer control from one part of the code to another within the same function or block. It's often considered a structured programming "anti-pattern" because it can lead to code that is difficult to understand and maintain.

syntax : goto label;

*/

// Example : 

// #include <stdio.h>

// int main() {
//     int i = 0;
    
// loop:
//     printf("%d\n", i);
//     i++;
//     if (i < 5)
//         goto loop;
    
//     return 0;
// }


#include <stdio.h>

int main() {
    int start = 1, end = 10;
    
loop:
    if (start % 2 == 0) {
        printf("%d Even\n", start);
    } else {
        printf("%d Odd\n", start);
    }
    start++;
    if (start <= end)
        goto loop;
    
    return 0;
}
