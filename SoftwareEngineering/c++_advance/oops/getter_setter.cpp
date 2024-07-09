#include <iostream>
using namespace std;

class ATM {
  private:
    int pin;
  
  public:
  
    void setPin(int p) {
        pin = p;
    }
  
    int getPin() {
        return pin;
    }
};

int main() {
    ATM a1;
    a1.setPin(1234);  // set the pin
    cout << "PIN set to: " << a1.getPin() << endl;  // get and display the pin
    return 0;
}
