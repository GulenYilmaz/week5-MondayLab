-- 1 Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)

CREATE TABLE person(
id SERIAL PRIMARY KEY,
name VARCHAR (30),
age FLOAT,
height FLOAT,
city VARCHAR(30),
color VARCHAR(30)
);


-- 2 Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.

INSERT INTO person(id,name,age,heigth,city,color)
VALUES('natali',22,159,'detroit','blue'),
('lucy',19,160,'farmigton','red'),
('gulen',28,176,'royal oak','white'),
('andy',30,166,'troy','yellow'),
('anna',34,185,'berkley','purple');


-- 3 Select all the people in the person table by height from tallest to shortest.

SELECT * FROM person ORDER BY height DESC;

-- 4 Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person ORDER BY height ASC;

-- 5 Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person ORDER BY age DESC;

-- 6 Select all the people in the person table older than age 20.
SELECT * FROM person where age >20;

-- 7 Select all the people in the person table that are exactly 18.
SELECT * FROM person where age =18;

-- 8Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person WHERE age < 20 OR age > 30;

-- 9 Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person WHERE age !=27;

-- 10 Select all the people in the person table where their favorite color is not red.
 SELECT * FROM person WHERE color = 'red';

 -- 11 Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person WHERE color != 'red' AND favorite_color != 'blue';

SELECT * FROM person WHERE color = 'orange' OR favorite_color = 'green';

-- 13 Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person WHERE color IN ( 'orange', 'green', 'blue' );

-- 14  Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person WHERE color IN ( 'yellow', 'purple' );