DROP DATABASE IF EXISTS employeeeTracker_db;

CREATE DATABASE employeeeTracker_db;

USE employeeeTracker_db;

CREATE TABLE employee 
(
id INTEGER NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30),
last_name VARCHAR(30),
role_id INTEGER,
manager_id INTEGER,
PRIMARY KEY (id)
);

CREATE TABLE role
(
id INTEGER NOT NULL AUTO_INCREMENT,
title VARCHAR(30),
salary DECIMAL (5,2),
department_id INTEGER,
role_id INTEGER,
manager_id INTEGER,
PRIMARY KEY (id),
FOREIGN KEY (role_id) REFERENCES employee(id),
FOREIGN KEY (manager_id) REFERENCES employee(id)
);

CREATE TABLE department
(
id INTEGER NOT NULL AUTO_INCREMENT,
name VARCHAR(30),
department_id INTEGER,
PRIMARY KEY (id),
FOREIGN KEY (department_id) REFERENCES role(id)
);

SELECT * FROM employee;

SELECT * FROM role;

SELECT * FROM department;

