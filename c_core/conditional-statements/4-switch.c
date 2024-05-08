
#include <stdio.h>

int main() {
    int day = 5;
    
    switch(day){
        case 0:
            printf("Today is mon");
            break;
        case 1:
            printf("Today is tue");
            break;
        case 2:
            printf("Today is Wed");
            break;
        case 3:
            printf("Today is thu");
            break;
        case 4:
            printf("Today is fri");
            break;
        case 5:
            printf("Today is sat");
            break;
        case 6:
            printf("Today is sun");
            break;
        default:
            printf("Invalid day");
    }
    

    return 0;
}