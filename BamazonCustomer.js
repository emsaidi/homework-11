//Dependencies
var mysql = require('mysql');
var Table = require('cli-table');
var inquirer = require('inquirer');

//Establish server connections
var connection = mysql.createConnection({
	host: "localhost",
	port: 3306,
	user: "root",
	password: "root",
	database: "BamazonDB"
});

connection.connect(function(err){
	if (err) throw err;
	console.log("connected as id " + connection.threadId);
});

var table = new Table({
	head: ['ID', 'Product Name', 'Dept Name', 'Price', 'Stock Qty'],
	colWidth: [80, 300, 200, 80, 80]
});

function Start(){
	connection.query("SELECT * FROM Products", function(err, res){
		if (err){
			console.log(err);
		}
		else{
			for(i = 0; i < res.length; i++){
				table.push(
					[res[i].id, res[i].product_name, res[i].dept_name, res[i].price, res[i].stock_quantity]
				);
			}
			console.log(table.toString());
		}
	}).then(() => Purchase());
}

function Purchase(){
	inquirer.prompt([
		{
		type: "input",
		name:"purchasedID",
		message: "Please provide the ID of the product you would like to buy.",
		},
		{
		type: "input",
		name:"purchasedQty",
		message: "How many units would you like to purchase?",
		}
	]).then(function (){
		connection.query("SELECT stock_quantity FROM Products WHERE ID = ?", [purchasedID], function (err, res){
			console.log(res);
		});
	});
}

Start();

