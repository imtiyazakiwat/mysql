-- Creating the table
CREATE TABLE car6161(
    regno INT(10),
    model VARCHAR(10),
    year INT(10)
);

-- Inserting data into the table
INSERT INTO car6161 VALUES(111, 'santro', 2000);
INSERT INTO car6161 VALUES(222, 'swift', 2012);
-- ... insert statements for other rows ...

-- Selecting all rows from the table
SELECT * FROM car6161;

-- Grouping functions
SELECT SUM(year) FROM car6161 GROUP BY regno, model;
SELECT regno, SUM(year) FROM car6161 GROUP BY regno HAVING SUM(year) > 2011;
SELECT model, COUNT(*) FROM car6161 GROUP BY model;
SELECT regno, model, SUM(year) FROM car6161 GROUP BY regno, model;
