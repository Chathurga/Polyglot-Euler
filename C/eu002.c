#include <stdio.h>

int main() {
    int x1 = 0, x2 = 1, x3, sum = 0;

    while (x2 < 4000000) {
        if (x2 % 2 == 0) {
            sum += x2;
        }
        x3 = x1 + x2;
        x1 = x2;
        x2 = x3;
    }

    printf("%d\n", sum);
}
