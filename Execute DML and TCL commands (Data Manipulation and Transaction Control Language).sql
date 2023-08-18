CREATE TABLE student6161(
    stuid INT(10),
    name VARCHAR(10),
    address VARCHAR(10)
);

INSERT INTO student6161 VALUES('1', 'Snehal', 'Nippani');

UPDATE student6161 SET name = 'Shardul' WHERE stuid = '1' AND name = 'Snehal';

DELETE FROM student6161 WHERE name = 'Shardul';
