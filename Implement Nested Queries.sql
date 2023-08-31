CREATE TABLE ps6161(id NUMBER(10), name VARCHAR(20));
CREATE TABLE vs6161(id NUMBER(10), marks NUMBER(10));

SELECT a.id, a.name, b.marks
FROM ps6161 a, vs6161 b
WHERE a.id = b.id AND b.marks > (SELECT marks FROM vs6161 WHERE id = '101');
