def primes():
    primes = [2]
    n = 1
    x = 3
    while True:
        for prime in primes:
            if x % prime == 0: break
        else:
            primes.append(x)
            yield x
        x += 2

x = 600851475143
for prime in primes():
    if x == prime:
        print(x)
        break
    if x % prime == 0:
        x /= prime
