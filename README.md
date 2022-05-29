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

The Basic SELECT Statement
```
 SELECT - where to return
 FROM - relation
 WHERE - combine filter
```
Drop table command - 
```
drop table if exists College;
drop table if exists Student;
drop table if exists Apply;
```
Create table command-
```
create table College(cName text, state text, enrollment int);
create table Student(sID int, sName text, GPA real, sizeHS int);
create table Apply(sID int, cName text, major text, decision text);
```
[Result](https://github.com/shreyaskale11/Relational-Databases-and-SQL/blob/main/1.csv)
