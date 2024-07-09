// #include <iostream>
// using namespace std;

// int main() {
//     string name = "Brijesh gondaliya";
//     cout<<name;

//     return 0;
// }

// #include <iostream>
// using namespace std;

// int main() {
//     string name = "Brijesh gondaliya";
//     cout<<name[0];

//     return 0;
// }

// #include <iostream>
// using namespace std;

// int main() {
    
//     int words = 1;
//     string str = "This is a space string new words ";
    
//     int last_index = str.length() - 1;
//     for(int start = 0; start<=last_index; start++){
        
//         if (str[start] == ' '){
//             words+=1;
//         }
        
//     }
    
//     if (str[last_index] == ' '){
//         words-=1;
//     }
    
//     cout<<"Total words is : "<<words;
    
    
    

//     return 0;
// }


#include <iostream>
using namespace std;

int main() {
    
    int words = 1;
    string str = "This is a space string new words ";
    
    int last_index = str.length() - 1;
    for(int start = 0; start<=last_index; start++){
        
        if (str[start] == ' '){
            words+=1;
        }
        
    }
    
    if (str[last_index] == ' '){
        words-=1;
    }
    
    cout<<"Total words is : "<<words;

    return 0;
}


#include <iostream>
#include <sstream> // for std::istringstream
using namespace std;

int main() {
    string str = "This is a space string   ";
    int word_count = 0;
    
    // Create a string stream object
    istringstream stream(str);
    string word;
    
    // Extract words from the stream
    while (stream >> word) {
        word_count++;
    }
    
    cout << "Total words are: " << word_count << endl;
    
    return 0;
}
