var mysql = require("mysql");
var inqiurer = require("inquirer");
require("console.table");

// Create connection info for database
var connection = mysql.createConnection({
    host: "localhost",
    port: "3306",
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
function start(){
    connection.query("SELECT * FROM products", function(err, res){
        if(err) throw err;

        console.table(res);
        promptForId(res);
    })
}

function promptForId(inventory){
    inquirer.prompt([{
        type: "input",
        name: "id",
        message: "what is the id of the item you would like to buy?"
    }]).then(function(answer){
        var userId = parseInt(answer.id);
        var product = checkInventory(userId, inventory);
        if(product){
            promptForQuantity(product);
        }
        else{
            console.log("The item is not in the inventory");
            start();
        }
    })
}
function checkInventory(userId,inventory){
    for(var i=0; i<inventory.length; i++){
        if(inventory[i].item_id == userId){
            return inventory[i];
        }
    }
    return null;
}
function promptForQuantity(product){
    inquirer.prompt([{
        type: "input",
        name: "quantity",
        message: "how many would you like to buy ?"
    }]).then(function(answer){
        var quantity = parseInt(answer.quantity);
        if(quantity < product.stock_quantity){
            makePurchase(product, quantity);
        }
        else{
            console.log("Insufficient quantity");
            start();
        }
    })
}
function makePurchase(product, quantity){
    connection.query("UPDATE products SET stock_quantity = stock_quantity - ? WHERE item_id = ?",[quantity, product.item_id], function(err, res){
        console.log("successfully purchased " +quantity + " " +product.product_name  +"for price: " +product.price);
        start();
    })
}