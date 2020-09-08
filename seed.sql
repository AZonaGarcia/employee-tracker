USE employeeeTracker_db;

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('Macy', 'Vaugn', 1031, 0925),
('Mel', 'Vera', 1031, 1115),
('Maggie', 'Vera', 1031, 1),
('Harry', 'Greenwood', 1231, 2);

DELETE FROM employee;

SELECT * FROM employee;

ALTER TABLE employee AUTO_INCREMENT = 1;

SELECT *
FROM employee mi1, employee mi2
WHERE mi1.id = mi2.manager_id;

UPDATE employee 
SET id = 2
WHERE first_name = 'Mel';


