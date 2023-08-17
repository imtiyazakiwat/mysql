-- PL/SQL Procedure with Exception Handling
DECLARE
    c_id customer6161.id%TYPE := 8;
    c_name customer6161.name%TYPE;
    c_addr customer6161.address%TYPE;
BEGIN
    SELECT name, address INTO c_name, c_addr
    FROM customer6161
    WHERE id = c_id;
    DBMS_OUTPUT.PUT_LINE ('Name: ' || c_name);
    DBMS_OUTPUT.PUT_LINE ('Address: ' || c_addr);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE ('No such customer!');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE ('ERROR!');
END;
/
