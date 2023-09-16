create table Employee6161(ename varchar(10), empno number(10), sal number(10));
insert into Employee6161 values('Arun',1,2500);
insert into Employee6161 values('Bhaskar',2,3000);
insert into Employee6161 values('Chetan',3,3500);
declare
  v_sal number(10);
  v_empno number(10);
begin
  for emp in (select empno, sal from Employee6161) loop
    v_empno := emp.empno;
    v_sal := emp.sal;
    dbms_output.put_line('Employee Number: ' || v_empno || ', Salary: ' || v_sal);
  end loop;
end;
/
