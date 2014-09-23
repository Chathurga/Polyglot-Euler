#include <iostream>
#include <vector>

int main() {
    long n = 600851475143;
    std::vector<int> primes({2});

    for (int x = 3; x != n; x += 2) {
        for(auto prime = primes.begin(); prime != primes.end(); ++prime) {
            if (x % (*prime) == 0) goto next;
        }
        primes.push_back(x);
        if (n % x == 0) n /= x;
        next:;
    }

    std::cout << n << std::endl;
}
