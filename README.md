# Relational-Databases-and-SQL
Data Definition Language (DDL)
 - create table
 - drop table

Data Manipulation Language (DML)
- select
- insert
- delete
- update

There are many other commands in SQL for indexes, constraints, views, triggers, transactions, authorization

##### The Basic SELECT Statement
```
 SELECT - where to return
 FROM - relation
 WHERE - combine filter
```
##### Drop table command - 
```
drop table if exists College;
drop table if exists Student;
drop table if exists Apply;
```
##### Create table command-
```
create table College(cName text, state text, enrollment int);
create table Student(sID int, sName text, GPA real, sizeHS int);
create table Apply(sID int, cName text, major text, decision text);
```
##### Introduce table variables 

Application information
```
select S.sID, S.sName, S.GPA, A.cName, C.enrollment
from Student S, College C, Apply A
where A.sID = S.sID and A.cName = C.cName;
```
[Result](https://github.com/shreyaskale11/Relational-Databases-and-SQL/blob/main/result/1.csv)

Pairs of students with same GPA
```
select S1.sID,S1.sName,S1.GPA,S2.sID,S2.sName,S2.GPA
from Student S1 , Student S2
where S1.GPA = S2.GPA and S1.sID < S2.sID
```
[Result](https://github.com/shreyaskale11/Relational-Databases-and-SQL/blob/main/result/2.csv)

List of college names and student names combine
```
select cName from College
union all
select sName from Student
order by cname ;
```
[Result](https://github.com/shreyaskale11/Relational-Databases-and-SQL/blob/main/result/3.csv)


IDs of students who applied to both CS and EE
```
select distinct A1.sID
from Apply A1, Apply A2
where A1.sID = A2.sID and A1.major = 'CS' and A2.major = 'EE';
```
[Result](https://github.com/shreyaskale11/Relational-Databases-and-SQL/blob/main/result/4.csv)

IDs of students who applied to CS but not EE
```
select distinct A1.sID
from Apply A1, Apply A2
where A1.sID = A2.sID and A1.major = 'CS' and A2.major <> 'EE';
```
[Result](https://github.com/shreyaskale11/Relational-Databases-and-SQL/blob/main/result/5.csv)


Students who applied to CS but not EE (with command)
```
select sID, sName 
from Student 
where sID in (select sID from Apply where major = 'CS')
  and sID not in (select sID from Apply where major = 'EE');
```
[Result](https://github.com/shreyaskale11/Relational-Databases-and-SQL/blob/main/result/6.csv)




### Resources

[SQL Arithmetic Operators](https://www.w3schools.com/sql/sql_operators.asp)


