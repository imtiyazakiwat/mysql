create table ps6161(id number(10), name varchar(20));
insert into ps6161 values('100','abc');
insert into ps6161 values('101','xyz');
insert into ps6161 values('102','pqr');
insert into ps6161 values('103','jkl');
select * from ps6161;
create table vs6161(id number(10), marks number(10));
insert into vs6161 values('100','95');
insert into vs6161 values('101','98');
insert into vs6161 values('102','99');
insert into vs6161 values('103','97');
select * from vs6161;
select a.id,a.name,b.marks from ps6161 a,vs6161 b where a.id=b.id and b.marks>(select marks from vs6161 where id='101');
