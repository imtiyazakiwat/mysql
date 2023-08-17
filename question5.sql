-- Creating tables and inserting data
CREATE TABLE ps6161(id INT(10), name VARCHAR(20));
-- ... insert statements for ps6161 ...
CREATE TABLE vs6161(id INT(10), marks INT(10));
-- ... insert statements for vs6161 ...

-- Performing nested query
SELECT a.id, a.name, b.marks
FROM ps6161 a, vs6161 b
WHERE a.id = b.id AND b.marks > (SELECT marks FROM vs6161 WHERE id = '101');
