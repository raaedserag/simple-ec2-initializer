CREATE DATABASE IF NOT EXISTS dms_sample;
############################
CREATE USER IF NOT EXISTS 'dms_user'@'%' IDENTIFIED BY 'dms_user';
GRANT ALL PRIVILEGES ON dms_sample.* TO 'dms_user'@'%';
############################ 
SET SQL_SAFE_UPDATES = 0;
call mysql.rds_set_configuration('binlog retention hours',8);
############################ 
use dms_sample;

CREATE TABLE IF NOT EXISTS employees(
id    INT NOT NULL AUTO_INCREMENT,
name  VARCHAR(30),
title  VARCHAR(30),
constraint employee_pk primary key(id)
);

Insert into employees (name,title) values ('Racker1', 'Cloud Engineer');
Insert into employees (name,title) values ('Racker2', 'Big Data Engineer');
Insert into employees (name,title) values ('Racker3', 'Software Engineer');
############################ 
CREATE TABLE IF NOT EXISTS students(
id    INT NOT NULL AUTO_INCREMENT,
name  VARCHAR(30),
grade  INT,
constraint student_pk primary key(id)
);

Insert into students (name,grade) values ('Student1', 1);
Insert into students (name,grade) values ('Student2', 3);
Insert into students (name,grade) values ('Student3', 4);

commit;
############################ 
