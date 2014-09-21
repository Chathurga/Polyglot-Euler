CREATE OR REPLACE FUNCTION max_prime_factor(t bigint) RETURNS int
AS $$
DECLARE x      int   := 3;
DECLARE primes int[] := ARRAY[2];
BEGIN

LOOP
    IF (SELECT COUNT(n) from unnest(primes) as n WHERE x % n = 0) = 0 THEN
        IF x = t THEN
            RETURN x;
        END IF;
        IF t % x = 0 THEN
            SELECT (t / x) INTO t;
        END IF;
        SELECT array_append(primes, x) INTO primes;
    END IF;
    SELECT (x + 2) INTO x;
END LOOP;

END;
$$ LANGUAGE plpgsql;

SELECT max_prime_factor(600851475143) AS n;
