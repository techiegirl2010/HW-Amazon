-- Drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon;

-- Creates the bamazon_db database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect bamazon_db --
USE bamazon_db;

-- Creates the table "people" within animals_db --
CREATE TABLE bamazon (
  -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(30) NOT NULL,

-- Create Table inside database called products.
-- The products table should have each of the following columns:
-- item_id (unique id for each product)
-- product_name (Name of product)
-- department_name
-- price (cost to customer)
-- stock_quantity (how much of the product is available in stores)
CREATE TABLE products(
    item_id INTEGER(4) NOT NULL,
    product_name VARCHAR(30) NOT NULL,
    department_name VARCHAR(30), NOT NULL,
    price DECIMAL(10,2), NOT NULL,
    stock_quantity INTEGER(10), NOT NULL
)


-- Insert rows containing data in all named columns
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "300");


