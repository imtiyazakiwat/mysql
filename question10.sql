DECLARE
    a INT;
    b INT;
    c INT;
    
    FUNCTION findMin(x IN INT, y IN INT)
    RETURN INT
    IS
    BEGIN
        IF x < y THEN
            RETURN x;
        ELSE
            RETURN y;
        END IF;
    END;
    
BEGIN
    a := 23;
    b := 45;
    c := findMin(a, b);
    DBMS_OUTPUT.PUT_LINE('Minimum of (23, 45) is: ' || c);
END;
/
