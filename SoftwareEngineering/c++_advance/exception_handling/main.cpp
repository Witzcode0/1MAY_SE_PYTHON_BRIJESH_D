// Exception handling in C++ allows you to gracefully handle errors or exceptional situations that occur during the execution of a program. The basic idea is to separate the error-handling code from the normal flow of the program.


// Here's a basic overview of exception handling in C++:

// Try: The try block identifies a block of code in which exceptions may occur. It's followed by one or more catch blocks.

// Catch: A catch block catches and handles exceptions thrown by the code in the corresponding try block. Each catch block specifies the type of exception it can handle.

// Throw: The throw statement is used to raise an exception. It can be used within the try block or within any function called from the try block.

// #include<iostream>
// using namespace std;

// int main(){
//     cout<<"start"<<endl;
//     cout<<"end"<<endl;
//     return 0;
// }

#include<iostream>
using namespace std;

int main(){
    cout << "start" << endl;
    try {
        int numerator = 10;
        int denominator = 0;
        if (denominator == 0) {
            throw "Division by zero error";
        }
        int result = numerator / denominator; // Corrected 'a' to 'numerator'
        cout << "Result: " << result << endl;
    }
    catch (...) {
        cerr << "Unknown error occurred" << endl;
    }

    cout << "end" << endl;
    return 0;
}
