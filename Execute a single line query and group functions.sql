-- Create the table
CREATE TABLE car6161(regno NUMBER(10), model VARCHAR(10), year NUMBER(10));

-- Insert data into the table
INSERT INTO car6161 VALUES (111, 'santro', 2000);
INSERT INTO car6161 VALUES (222, 'swift', 2012);
INSERT INTO car6161 VALUES (333, 'swift', 2001);
INSERT INTO car6161 VALUES (444, 'brezza', 2016);
INSERT INTO car6161 VALUES (555, 'creta', 2021);
INSERT INTO car6161 VALUES (666, 'alto800', 2015);

-- Select all records from the table
SELECT * FROM car6161;

-- Group functions
SELECT SUM(year) FROM car6161 GROUP BY regno, model;
SELECT regno, SUM(year) FROM car6161 GROUP BY regno HAVING SUM(year) > 2011;
SELECT model, COUNT(*) FROM car6161 GROUP BY model;
SELECT regno, model, SUM(year) FROM car6161 GROUP BY regno, model;
