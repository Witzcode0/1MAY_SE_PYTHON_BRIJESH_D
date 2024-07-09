#include <stdio.h>

int main() {
    int end = 10;
    for(int start = 1; start<=end; start++){
        if(start == 3){
            continue;
        }else if(start == 6){
            break;
        }
        printf("%d\n", start);
    }
    return 0;
}
