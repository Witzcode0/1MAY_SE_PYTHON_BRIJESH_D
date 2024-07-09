// strcat(): Concatenates (appends) one string to the end of another.
#include <stdio.h>
#include <string.h>

int main() {
    char fname[17] = "brijesh";
    char s[] = " ";
    char lname[] = "Gondaliya";
    
    strcat(fname, s);
    strcat(fname, lname);
    
    printf("%s", fname);

    return 0;
}