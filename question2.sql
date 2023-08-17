-- Creating a table
CREATE TABLE students(
    name VARCHAR(10),
    age INT(2)
);

-- Adding a column to the table
ALTER TABLE students ADD mobno INT(10);

-- Dropping a column from the table
ALTER TABLE students DROP COLUMN mobno;

-- Dropping a table
DROP TABLE students;
