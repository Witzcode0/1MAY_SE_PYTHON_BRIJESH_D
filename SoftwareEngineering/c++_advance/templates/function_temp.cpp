#include <iostream>
using namespace std;

template <typename T1, typename T2>
auto add(T1 num1, T2 num2) {
    return (num1 + num2);
}

int main() {
    int result1;
    result1 = add<int, int>(2, 3);
    cout << result1 << endl;

    return 0;
}
