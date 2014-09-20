CREATE OR REPLACE FUNCTION fib_to_4mil() RETURNS SETOF integer
AS $$
DECLARE x1 integer;
DECLARE x2 integer;
DECLARE x3 integer;
BEGIN

SELECT 0 INTO x1;
SELECT 1 INTO x2;

LOOP
    IF x2 < 4000000 THEN
        RETURN NEXT x2;
        SELECT (x1 + x2) INTO x3;
        SELECT x2 INTO x1;
        SELECT x3 INTO x2;
    ELSE
        RETURN;
    END IF;
END LOOP;

END;
$$ LANGUAGE plpgsql;

SELECT SUM(fib) FROM fib_to_4mil() as fib WHERE fib % 2 = 0;
