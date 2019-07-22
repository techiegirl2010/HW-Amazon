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
