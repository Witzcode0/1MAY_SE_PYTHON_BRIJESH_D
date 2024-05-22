#include <stdio.h>

int main() {
    int x = 10, *y;
    y = &x;
    
    printf("%x\n", y); // b3ea4514
    printf("%d\n", *y); // b3ea4514

    return 0;
}

// #include <stdio.h>

// int main() {
//     int x = 10, *y;
//     y = &x;
//     *y += 1;  
//     y += 1;   
//     printf("%p\n", (void*)y);
//     printf("%d\n", *y);
//     return 0;
// }


// #include <stdio.h>

// int main() {
//    int *x;
//    int **y;
//    *x = 20;
//    y = &x;
//    printf("%d\n",**y);
// }

