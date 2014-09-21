x1, x2 = 0, 1
total = 0

while x2 < 4000000:
    if x2 % 2 == 0:
        total += x2
    x3 = x1 + x2
    x1 = x2
    x2 = x3

print(total)
