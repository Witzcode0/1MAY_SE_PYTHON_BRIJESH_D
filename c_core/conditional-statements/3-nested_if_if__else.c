
#include <stdio.h>

int main() {
    int age;
    float weight;
    
    printf("\n\nEnter age : ");
    scanf("%d", &age);
    if (age >= 18 ){
        printf("\nEnter weight : ");
        scanf("%d", &weight);
        if(weight >= 50){
            printf("You can donate");
        }else{
            printf("You can not donate");
        }
    }else{
        printf("You can not donate");
    }
   
    

    return 0;
}