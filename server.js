// Import and require mysql2
const mysql = require("mysql2");
const inquirer = require("inquirer");

// Query database
// Reads all rows because is has no WHERE clause
db.query("SELECT * FROM department", function (err, results) {
    console.log(results);
});

// Default response for any other request (Not Found)
app.use((req, res) => {
    res.status(404).end();
});

// Query database
// Reads all rows because is has no WHERE clause
db.query("SELECT * FROM role", function (err, results) {
    console.log(results);
});

// Default response for any other request (Not Found)
app.use((req, res) => {
    res.status(404).end();
})

