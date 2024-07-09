#include<stdio.h>

int main(){

    FILE *f;
    char data[255];

    f = fopen("example.txt", "r");

    fclose(f);

    if (f == NULL){
        printf("Unable to open a file.\n");

    } else {
        printf("File successfully opend\n");

    }



    fgets(data, sizeof(data), f);

    printf("Data %s", data);

    return 0;
}
