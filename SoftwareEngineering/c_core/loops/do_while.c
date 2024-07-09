
#include <stdio.h>

int main() {
    
    int table = 52, start = 1, end = 10;
    
    do{
        printf("%d * %d = %d\n", table, start, table*start);
        start+=1;
    }while(start<=end);
    

    return 0;
} 