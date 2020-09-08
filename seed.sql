USE employeeeTracker_db;

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('Macy', 'Vaugn', 1031, 0925),
('Mel', 'Vera', 1031, 1115),
('Maggie', 'Vera', 1031, 1),
('Harry', 'Greenwood', 1231, 2);

DELETE FROM employee;

SELECT * FROM employee;

SELECT *
FROM employee mi1, employee mi2
WHERE mi1.id = mi2.manager_id;

INSERT INTO employeeRole (title, salary, department_id)
VALUES
('Manager', 65000, 10),
('Manager', 65500, 12),
('Full Stack Web Developer', 53000, 10),
('Front End Web Developer', 50000, 12);

SELECT employee.role_id, employeeRole.department_id
FROM employee
LEFT JOIN employeeRole
ON employee.role_id = employeeRole.department_id;

SELECT * FROM employee;

SELECT employeeRole.department_id, department.department_id
FROM employeeRole
LEFT JOIN department
ON employeeRole.department_id = department.department_id;

SELECT * FROM employee;

SELECT * FROM employeeRole;

SELECT * FROM department;
