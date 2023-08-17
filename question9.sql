-- PL/SQL Procedure with Cursors
DECLARE
    CURSOR c1 IS
        SELECT ename, sal
        FROM Employee6161
        ORDER BY sal DESC;
    v_ename Employee6161.ename%TYPE;
    v_sal Employee6161.sal%TYPE;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO v_ename, v_sal;
        EXIT WHEN c1%ROWCOUNT > 5;
        DBMS_OUTPUT.PUT_LINE(v_ename || ' ' || v_sal);
    END LOOP;
    CLOSE c1;
END;
/
