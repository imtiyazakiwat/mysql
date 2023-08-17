-- Creating a PL/SQL package
CREATE OR REPLACE PACKAGE FactorialPackage AS
    PROCEDURE CalculateFactorial(num IN INT);
END FactorialPackage;
/

-- Creating the package body
CREATE OR REPLACE PACKAGE BODY FactorialPackage AS
    PROCEDURE CalculateFactorial(num IN INT) IS
        result INT := 1;
    BEGIN
        IF num < 0 THEN
            DBMS_OUTPUT.PUT_LINE('Factorial is not defined for negative INTs.');
            RETURN;
        END IF;

        FOR i IN 1..num LOOP
            result := result * i;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' is: ' || result);
    END CalculateFactorial;
END FactorialPackage;
/





-- Calling the procedure from the package
BEGIN
    FactorialPackage.CalculateFactorial(5); -- Calculate factorial of 5
    FactorialPackage.CalculateFactorial(10); -- Calculate factorial of 10
END;
/


