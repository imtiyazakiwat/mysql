CREATE TABLE customer6161(id NUMBER(10), name VARCHAR(10), age NUMBER(2), address VARCHAR(10), salary NUMBER(10));
CREATE TABLE orders6161(oid NUMBER(10), customerid NUMBER(10), amount NUMBER(10));

SELECT a.id, b.name, a.salary
FROM customer6161 a, customer6161 b
WHERE a.salary < b.salary;
