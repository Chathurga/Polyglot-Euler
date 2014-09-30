#include <stdio.h>

int palindrome(int x) {
    int digits[20];
    int i = 0, j;
    while (x != 0) {
        digits[i++] = x % 10;
        x /= 10;
    }
    for (j = 0; j < i/2; ++j) {
        if (digits[j] != digits[i-j-1]) return 0;
    }
    return 1;
}

int main() {
    int x, y, largest = 0;
    for (x = 999; x >= 100; --x) {
        for (y = 999; y >= 100; --y) {
            int xy = x*y;
            if (xy < largest) break;
            if (palindrome(xy)) {
                largest = xy;
            }
        }
    }
    printf("%d\n", largest);
}
