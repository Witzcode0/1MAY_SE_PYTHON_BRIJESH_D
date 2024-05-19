// strcmp(): Compares two strings.

#include <stdio.h>
#include <string.h>

int main() {
    char name1[17] = "brijesh";
    char name2[17] = "brijesh";
    
    int res = strcmp(name1, name2);
    
    printf("%d", res);

    return 0;
}

// #include <stdio.h>
// #include <string.h>

// int main() {
//     char name1[17] = "brijesh";
//     char name2[17] = "Brijesh";
    
//     int res = strcmp(name1, name2);
    
//     printf("%d", res);

//     return 0;
// }


// #include <stdio.h>
// #include <string.h>

// // For POSIX environments
// int main() {
//     char name1[17] = "brijesh";
//     char name2[17] = "Brijesh";
    
//     // Compare strings case-insensitively
//     int res = strcasecmp(name1, name2);
    
//     if (res == 0) {
//         printf("The strings are equal (case-insensitive comparison).\n");
//     } else {
//         printf("The strings are not equal (case-insensitive comparison).\n");
//     }

//     return 0;
// }
