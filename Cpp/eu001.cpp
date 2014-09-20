#include <iostream>

// I don't like how printing is done in C++
// The << operator is overloaded with specific types on the ostream class
// Making a new type printable is really (really) werid:
//   http://stackoverflow.com/a/237074

int main() {
    int sum = 0;
    for (int x = 0; x < 1000; x++) {
  	    if (x % 3 == 0 || x % 5 == 0) {
  		    sum += x;
  	    }
    }
    std::cout << sum << std::endl;
}
