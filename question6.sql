CREATE TABLE customer6161(id INT(10), name VARCHAR(10), age INT(2), address VARCHAR(10), salary INT(10));
CREATE TABLE orders6161(oid INT(10), customerid INT(10), amount INT(10));

SELECT a.id, b.name, a.salary
FROM customer6161 a, customer6161 b
WHERE a.salary < b.salary;
