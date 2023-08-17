-- Creating a table
CREATE TABLE student6161(
    stuid INT(10),
    name VARCHAR(10),
    address VARCHAR(10)
);

-- Inserting data into the table
INSERT INTO student6161 VALUES('1', 'Snehal', 'Nippani');
-- ... insert statements for other rows ...

-- Updating data in the table
UPDATE student6161 SET name = 'Shardul' WHERE stuid = '1' AND name = 'Snehal';

-- Deleting data from the table
DELETE FROM student6161 WHERE name = 'Shardul';
