-- Drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;

-- Creates the bamazon_db database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect bamazon_db --
USE bamazon_db;

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
    department_name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INTEGER(10) NOT NULL,
    primary key(item_id)
);

-- Insert rows containing data in all named columns
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0100", "Flea collar", "cat", "29.99", "100");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0101", "Revolution - 6 pack", "cat", "89.99", "100");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0102", "Friskies fish pate", "cat", "0.60", "100");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0103", "Tiki Cat - chicken shreds", "cat", "1.99", "100");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0104", "Carrier - blue", "cat", "49.99", "100");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0105", "Mouse toy", "cat", "1.49", "100");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0106", "Litter box", "cat", "19.99", "100");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0107", "Laser pointer", "cat", "5.99", "100");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0108", "Water fountain", "cat", "39.99", "100");

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("0109", "Collar", "cat", "9.99", "100");

-- Displays all inventory

-- Prompts customer to buy


-- If a manager selects View Products for Sale, the app should list every available item: the item IDs, names, prices, and quantities.


-- If a manager selects View Low Inventory, then it should list all items with an inventory count lower than five.

-- If a manager selects Add to Inventory, your app should display a prompt that will let the manager "add more" of any item currently in the store.

-- If a manager selects Add New Product, it should allow the manager to add a completely new product to the store.


