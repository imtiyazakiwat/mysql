
CREATE TABLE students(
    name VARCHAR(10),
    age NUMBER(2)
);


ALTER TABLE students ADD mobno NUMBER(10);

ALTER TABLE students DROP COLUMN mobno;

DROP TABLE students;
