CREATE OR REPLACE PACKAGE FactorialPackage AS
    PROCEDURE CalculateFactorial(num IN NUMBER);
END FactorialPackage;
/

CREATE OR REPLACE PACKAGE BODY FactorialPackage AS
    PROCEDURE CalculateFactorial(num IN NUMBER) IS
        result NUMBER := 1;
    BEGIN
        IF num < 0 THEN
            DBMS_OUTPUT.PUT_LINE('Factorial is not defined for negative NUMBERs.');
            RETURN;
        END IF;

        FOR i IN 1..num LOOP
            result := result * i;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' is: ' || result);
    END CalculateFactorial;
END FactorialPackage;
/





BEGIN
    FactorialPackage.CalculateFactorial(5);
    FactorialPackage.CalculateFactorial(10); 
END;
/


