-- order_id, person_id, product_name, product_price, quantity

CREATE TABLE orders (
order_id SERIAL PRIMARY KEY 
person_id INTEGER, 
product_name VARCHAR(30), 
product_price FLOAT, 
quantity FLOAT);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.

INSERT INTO records(person_id,product_name, product_price, quantity)
VALUES (17,'shirt', 70,500),
       (35, 'pants', 100,420);

-- 3 Select all the records from the orders table.
SELECT * FROM orders;
-- 4 Calculate the total number of products ordered.
SELECT SUM (qualtity) FROM orders;
-- 5 Calculate the total order price.
SELECT SUM (qualtity * product_price)FROM orders;
-- 6 Calculate the total order price by a single person_id.
SELECT SUM (quantity * product_price ) FROM orders WHERE person_id =17;