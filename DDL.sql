-- leaving a comment, will not be run as a command

-- DDL commands (Data Definition Language)
-- Used to build and modify our DB

-- CREATE

CREATE DATABASE ecom;

USE ecom; -- Telling my interpreter which database to use for this script file

CREATE TABLE customer (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(75) NOT NULL,
email VARCHAR(150) NULL
);

CREATE TABLE orders (id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE NOT NULL,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- ALTER

ALTER TABLE customer ADD (phone VARCHAR(16), address VARCHAR(150)); -- Adding phone column to my customer table

ALTER TABLE customer ADD phone VARCHAR(16);

ALTER TABLE customer 
ADD address VARCHAR(150);

-- DROPPING a column

ALTER TABLE customer 
DROP COLUMN phone;

-- DROPPING a table

CREATE TABLE droppable (
id INT AUTO_INCREMENT PRIMARY KEY -- adding a dummy table to drop
);

DROP TABLE droppable; -- dropping a table

