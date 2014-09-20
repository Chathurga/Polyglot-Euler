#include <iostream>

int main() {
    int x1 = 0, x2 = 1, x3, sum = 0;

    while (x2 < 4000000) {
        x3 = x1 + x2;
        if (x3 % 2 == 0) {
            sum += x3;
        }
        x1 = x2;
        x2 = x3;
    }

    std::cout << sum << std::endl;
}
