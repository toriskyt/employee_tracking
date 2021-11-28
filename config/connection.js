const mysql = require("mysql2");

// Connect to database
// db variable with connection objects
const connection = mysql.createConnection(
    {
        host: 'localhost',
        // MySQL username
        user: 'root',
        // MySQL password
        password: '',
        // Main database
        database: 'employee_db'
    },
);

connection.connect(function(err){
    if(err) throw err;
});

module.exports = connection

