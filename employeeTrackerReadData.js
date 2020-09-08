var mysql = require("mysql");
var inquirer = require("inquirer");
const Choices = require("inquirer/lib/objects/choices");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "",
    database: "employeeTracker_db"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    createProduct();
});

inquirer.
    prompt(
        {
            type: "input",
            message: "What would you like to do?",
            name: "task",
            choices: [
                "View employees",
                "View departments",
                "View employee roles",
                "Add employee",
                "Add employee department",
                "Add employee role",
                "Delete employee",
                "Update employee roles"
            ]
        },
        {
            type: "input",
            message: "Employee Name",
            name: "empName"
        },
        {
            type: "input",
            message: "Employee Department",
            name: "empDepartment"
        },
        {
            type: "input",
            message: "Employee Role",
            name: "empRole"
        }
    )