--1
CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    age INTEGER,
    height FLOAT,
    city VARCHAR(30),
    favorite_color VARCHAR(30)
);

--2
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Natalie', 22, 180, 'Detroit', 'yellow'),
('Lucy', 23, 170, 'Lansing', 'green'),
('Gulen', 30, 155, 'Farmington', 'red'),
('Bob', 35, 185, 'Rochester', 'blue'),
('Harold', 10, 120, 'Allen Park', 'purple');

--3
SELECT * FROM person
ORDER BY height DESC;

--4
SELECT * FROM person
ORDER BY height ASC;

--5
SELECT * FROM person
ORDER BY age DESC;

--6
SELECT * FROM person
WHERE age > 20;

--7
SELECT * FROM person
WHERE age = 18;

--8
SELECT * FROM person
WHERE age < 20 OR age > 30;

--9
SELECT * FROM person
WHERE age <> 27;

--10
SELECT * FROM person
WHERE favorite_color <> 'red';

--11
SELECT * FROM person
WHERE favorite_color <> 'red' AND favorite_color <> 'blue';

--12
SELECT * FROM person
WHERE favorite_color = 'green' OR favorite_color = 'orange';

--13
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

--14
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');