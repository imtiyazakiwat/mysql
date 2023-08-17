-- Creating a table
CREATE TABLE college6161(id INT(10), name VARCHAR(20), age INT(10), address VARCHAR(10), salary INT(10));
-- ... insert statements for college6161 ...

-- Creating a view
CREATE VIEW Gouri_view AS
SELECT name, age
FROM college6161;

-- Using the view
SELECT * FROM Gouri_view;
