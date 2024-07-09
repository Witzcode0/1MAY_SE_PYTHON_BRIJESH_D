// variable declaration and set value and get input from the user
#include<stdio.h>

void main(){
    // variable
    int num1;
    num1 = 10;

    float num2 = 20.2, num3 = 35.343;

    printf("int - %d\n", num1);
    printf("float -  num2 = %f, num3 = %f\n", num2, num3);

    int num4;

    printf("Enter a num4: ");
    scanf("%d", &num4);

    printf("num4 - %d\n", num4);

    int num5, num6;

    printf("Enter a num5 and num6 seprated by space: ");
    scanf("%d %d", &num5, &num6);

    printf("num5 - %d and num6 - %d\n", num5, num6);
}


