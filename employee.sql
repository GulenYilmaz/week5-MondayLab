--1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

--2
SELECT MAX(birth_date) FROM employee;

--3
SELECT MIN(birth_date) FROM employee;

--4
--SELECT employee_id FROM employee
--WHERE first_name = 'Nancy' AND last_name = 'Edwards';
-- Returns 2 for Nancy Edwards' employee ID

SELECT * FROM employee
WHERE reports_to = 2;

--5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';