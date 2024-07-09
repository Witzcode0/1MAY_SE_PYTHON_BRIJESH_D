
#include <stdio.h>

int main() {
    int score = 4;
    
    if (score >= 35){
        printf("You are pass.");
    }

    int balance = 10000, w_bal = 20000;
    
    if (w_bal <= balance){
        balance -= w_bal;
        printf("Your balanceis: %d", balance);
    }

    return 0;
}