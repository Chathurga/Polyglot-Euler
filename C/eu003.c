#include <math.h>
#include <stdlib.h>
#include <stdio.h>

int main() {
    long n = 600851475143;
    int root_n = sqrt(n);
    int max_primes = root_n / (log(root_n) - 1);
    int *primes = malloc(sizeof(int) * max_primes);
    int i = 1, j, x;
    primes[0] = 2;

    for (x = 3; x <= root_n; x += 2) {
        int is_prime = 1;
        for (j = 0; j < i; ++j) {
            if (x % primes[j] == 0) {
                is_prime = 0;
                break;
            }
        }
        if (is_prime == 1) {
            primes[i++] = x;
            if (n == x) {
                printf("%d\n", x);
                break;
            }
            if (n % x == 0) {
                n /= x;
            }
        }
    }

    free(primes);
}
