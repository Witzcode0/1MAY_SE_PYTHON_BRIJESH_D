#include <stdio.h>
#include <string.h>

union book {
    char name[20];
    int page;
    float price;
};

int main() {
    union book b1, b2;
    
    strcpy(b1.name, "Python");
    b1.price = 300.24;
    b1.page = 600;
    
    printf("Book name : %s\n", b1.name);
    printf("Book price : %f\n", b1.price);
    printf("Book pages : %d\n", b1.page);
    
    strcpy(b2.name, "JAVA");
    b2.price = 500.24;
    b2.page = 700;
    
    printf("Book name : %s\n", b2.name);
    printf("Book price : %f\n", b2.price);
    printf("Book pages : %d\n", b2.page);
    return 0;
}