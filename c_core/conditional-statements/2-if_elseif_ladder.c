
// #include <stdio.h>

// int main() {
//     int score = 16;
    
//     if (score >= 80){
//         printf("firstclass\n");
//     }else if(score >= 60){
//         printf("secondclass\n");
//     }else if(score >= 40){
//         printf("thirdclass\n");
//     }else{
//         printf("You are failed\n");
//     }

//     return 0;
// }



#include <stdio.h>

int main() {
    int score =-12;
    
    if (score >= 0 && score <= 100){
        if (score >= 80){
            printf("firstclass\n");
        }else if(score >= 60){
            printf("secondclass\n");
        }else if(score >= 40){
            printf("thirdclass\n");
        }else{
            printf("You are failed\n");
        }
    }else{
        printf("Invalid score please enter score between 0 too 100.");
    }
    
    

    return 0;
}