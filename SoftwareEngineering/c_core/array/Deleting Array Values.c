#include <stdio.h>

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};  
  
    for (int i = 0; i < 5; i++) {
        // Soft delete
        if (numbers[i] == 30){
            continue;
        }
        printf("Element at index %d: %d\n", i, numbers[i]);
    }

    return 0;
}
