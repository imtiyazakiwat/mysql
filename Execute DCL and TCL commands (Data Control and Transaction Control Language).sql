-- DCL commands
CREATE TABLE student3 (id NUMBER(3), name VARCHAR(10));
GRANT SELECT, INSERT, UPDATE ON student3 TO user;
INSERT INTO student3 VALUES (1, 'abc');
INSERT INTO student3 VALUES (2, 'pqr');
INSERT INTO student3 VALUES (3, 'xyz');
SELECT * FROM student3;
UPDATE student3 SET name = 'das' WHERE id = 1;
select * from student3;
delete from student3 where id=1;
revoke insert on student3 from user;
insert into student3 values(4,'ram');
SELECT * FROM student3;


-- TCL commands
CREATE TABLE emp22 (id NUMBER(3), name VARCHAR(10));
INSERT INTO emp22 VALUES (1, 'ravi');
INSERT INTO emp22 VALUES (2, 'deep');
INSERT INTO emp22 VALUES (3, 'rock');
SELECT * FROM emp22;
COMMIT;
UPDATE emp4 SET name = 'rani' WHERE id = 3;
SELECT * FROM emp22;
ROLLBACK;
SELECT * FROM emp22;
UPDATE emp22 SET name = 'rani' WHERE id = 3;
SELECT * FROM emp22;