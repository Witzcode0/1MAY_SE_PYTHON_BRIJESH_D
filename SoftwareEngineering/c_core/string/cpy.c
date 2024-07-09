// strcpy(): Copies one string to another.
#include <stdio.h>
#include <string.h>

int main() {
    char name1[] = "brijesh";
    char name2[7];
    
    strcpy(name2, name1);
    
    printf("%s", name2);

    return 0;
}