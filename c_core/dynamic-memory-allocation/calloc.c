#include <stdio.h>
#include <stdlib.h>


int main() {
   int* ptr;
   int n, i;
   printf("Enter number of elements:");
    scanf("%d",&n);
    printf("Entered number of elements: %d\n", n);
    ptr = (int*)calloc(n, sizeof(int));
    
    if(ptr == NULL){
        printf("Memory is not allocated");
        exit(0);
    }else {
        printf("Memory successfully allocated using malloc.\n");

        for (i = 0; i < n; ++i) {
            ptr[i] = i * 2;
        }
 
        printf("The elements of the array are: ");
        for (i = 0; i < n; ++i) {
            printf("%d, ", ptr[i]);
        }

        free(ptr);
        printf("Malloc Memory successfully freed.\n");
    }
    
    
}
