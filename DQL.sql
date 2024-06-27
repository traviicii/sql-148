USE ecom;

-- DQL (Data Query Language)
-- allows us to extract data in a refined way

-- SELECT, FROM

SELECT * FROM customer;

SELECT customer_name, email FROM customer;

-- WHERE - let's us filter based off of a confdition

SELECT * FROM customer
WHERE customer_name = 'Travis';

-- AND, OR, NOT

SELECT * FROM customer
WHERE id = 8 OR id = 11;

SELECT * FROM customer
WHERE customer_name = 'Dylan Katina' OR email = 'dk@email.com';

SELECT * FROM customer
WHERE customer_name LIKE 'D%';

SELECT * FROM customer
WHERE id > 8;

SELECT * FROM customer
WHERE NOT id = 1;

-- ORDER BY

SELECT * FROM customer
ORDER BY customer_name DESC;

SELECT * FROM customer
ORDER BY customer_name ASC;

-- LIKE

SELECT * FROM customer
WHERE customer_name LIKE 'D%'; -- Entried with a customer name that starts with 'D'

SELECT * FROM customer
WHERE email LIKE '%jedi.com';

-- BETWEEN

SELECT * FROM orders;

SELECT * FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-04-30';
