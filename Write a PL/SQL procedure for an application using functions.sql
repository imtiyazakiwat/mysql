DECLARE
    a NUMBER;
    b NUMBER;
    c NUMBER;
    
    FUNCTION findMin(x IN NUMBER, y IN NUMBER)
    RETURN NUMBER
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
