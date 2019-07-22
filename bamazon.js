var mysql = require("mysql");
var inqiurer = require("inquirer");

// Create connection info for database
var connection = mysql.createConnection({
    host: "localhost",
    port: "3307",
    username: "root",
    password: "root",
    database: "bamazon_db"
})

// connect to the mysql server and sql database
connection.connect(function (err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    start();
});

// Create Table inside database called products.
// The products table should have each of the following columns:
// item_id (unique id for each product)
// product_name (Name of product)
// department_name
// price (cost to customer)
// stock_quantity (how much of the product is available in stores)
CREATE TABLE products(
    item_id INTEGER(4) NOT NULL,
    product_name VARCHAR(30) NOT NULL,
    department_name VARCHAR(30), NOT NULL,
    price INTEGER(10,2), NOT NULL,
    stock_quantity INTEGER(10), NOT NULL
)


// Insert rows containing data in all named columns --
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


