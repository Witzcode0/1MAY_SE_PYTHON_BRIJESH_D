
#include <stdio.h>

int main() {
    int score = 55;
    
    if (score >= 35){
        printf("You are pass.\n");
    }else{
        printf("You are failed\n");
    }

    int balance = 10000, w_bal = 1000;
    
    if (w_bal <= balance){
        balance -= w_bal;
        printf("Your balanceis: %d\n", balance);
    }else{
        printf("Balance is insufficent\n");
    }

    return 0;
}