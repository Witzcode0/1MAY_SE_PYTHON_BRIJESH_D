// an inline function is a function that is expanded in line when it is called, rather than being invoked in the traditional manner with a call stack. The inline expansion of a function improves performance by eliminating the overhead of a function call, such as saving registers, stack frame manipulation, and jumping to the called function. However, inline functions can increase the size of the binary if they are large and called many times.

// How to Declare an Inline Function

// An inline function is declared by using the inline keyword before the function's return type. 

inline int add(int a, int b) {
    return a + b;
}


Characteristics and Usage
// - Compiler's Discretion: The inline keyword is a request, not a command. The compiler may choose to ignore this request if it determines that inlining the function is not beneficial or feasible.

// - Small Functions: Inline functions are most effective for small, frequently called functions. Large functions or functions with complex logic are less likely to be inlined by the compiler.

// - Header Files: Inline functions are often defined in header files because their definitions need to be available to any translation unit that uses them.

#include <iostream>
using namespace std;

// Inline function definition
inline int multiply(int a, int b) {
    return a * b;
}

int main() {
    int x = 5, y = 10;
    cout << "Multiplication of " << x << " and " << y << " is: " << multiply(x, y) << endl;
    return 0;
}
-