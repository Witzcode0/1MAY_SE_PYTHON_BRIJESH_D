// #include <stdio.h>

// int main() {
    
//     float marks[5];
//     for(int sub = 1; sub <= 5; sub++){
//         float score;
//         printf("Enter your sub-%d mark: ", sub);
//         scanf("%f", &score);
        
//         marks[sub-1] = score;
//     }
//     int total = 0;
//     for(int mark = 1; mark <= 5; mark++){
//         printf("sub-%d : mark - %.2f\n", mark, marks[mark-1]);
//         total += marks[mark-1];
//     }
    
//     printf("Percentage : %f", total/500);
//     return 0;
// }



#include <stdio.h>

int main() {
    
    float marks[5] = {46, 67, 49, 95, 80};
    
    int total = 0;
    for(int mark = 1; mark <= 5; mark++){
        printf("sub-%d : mark - %.2f\n", mark, marks[mark-1]);
        total += marks[mark-1];
    }
    
    printf("Percentage : %f", total/500);
    return 0;
}