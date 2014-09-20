// Should be compiled with -ftemplate-depth=1000

#include <iostream>

template<int N>
struct SumMult3or5 {
    enum {
        sum = SumMult3or5<N-1>::sum + ((N % 3 == 0 || N % 5 == 0) ? N : 0)
    };
};

template<>
struct SumMult3or5<0> {
    enum { sum = 0 };
};

int main() {
    std::cout << SumMult3or5<999>::sum << std::endl;
}
