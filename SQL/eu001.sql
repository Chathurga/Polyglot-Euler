SELECT SUM(n)
FROM generate_series(1, 999) AS n
WHERE n % 3 = 0 OR n % 5 = 0;
