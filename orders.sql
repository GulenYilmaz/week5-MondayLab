--1
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(40),
    product_price FLOAT,
    quantity INTEGER
);

--2
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (10, 'shirt', 8, 3),
(15, 'jacket', 25, 1),
(10, 'coat', 45, 1),
(16, 'scarf', 12, 2),
(22, 'boots', 60, 2);

--3
SELECT * FROM orders;

--4
SELECT SUM(quantity) FROM orders;

--5
SELECT SUM(product_price*quantity) FROM orders;

--6
SELECT SUM(product_price*quantity) FROM orders
WHERE person_id = 10;