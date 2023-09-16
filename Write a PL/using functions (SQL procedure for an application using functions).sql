SET SERVEROUTPUT ON;

DECLARE
  a NUMBER;
  b NUMBER;
  c NUMBER;

  PROCEDURE findMin(x IN NUMBER, y IN NUMBER, z OUT NUMBER) IS
  BEGIN
    IF x < y THEN
      z := x;
    ELSE
      z := y;
    END IF;
  END;

BEGIN
  a := 23;
  b := 45;
  findMin(a, b, c);
  DBMS_OUTPUT.PUT_LINE('Minimum of (23, 45) is: ' || c);
END;
/
