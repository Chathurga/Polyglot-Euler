#include <iostream>

template<int X1, int X2>
struct FibSumEven {
    enum {
        sum = (X2 % 2 == 0 ? X2 : 0)
            + FibSumEven<X2, (X2 >= 4000000 ? 0 : X1 + X2)>::sum
    };
};

template<int X1>
struct FibSumEven<X1, 0> {
    enum { sum = 0 };
};

int main() {
    std::cout << FibSumEven<0, 1>::sum << std::endl;
}
