SELECT SUM(nums.n)
FROM generate_series(1, 999) AS nums(n)
WHERE nums.n % 3 = 0 OR nums.n % 5 = 0;
