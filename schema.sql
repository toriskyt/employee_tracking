-- DELETE the database if the employee_db exists in the computer
DROP DATABASE IF EXISTS employee_db;
-- CREATES the employee database
CREATE DATABASE employee_db;

-- Configures the default database for all queries after this line
-- Every query after this line will automatically use the employee database
USE employee_db;

-- CREATES tables called department, employee, role with columns id (INT) and name (VARCHAR)
-- (1)Department calls for department names and department id
CREATE TABLE department (
    id INT UNSIGNED AUTO_INCREMENT,
    department_name VARCHAR(30),
    PRIMARY KEY(id)
);

-- (3)Role calls for job title, role id, department role belongs to, and salary
CREATE TABLE emp_role (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL(10,2),
    department_id INT UNSIGNED,
    FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE
);

-- -- (2)Employee calls for employee first/last name, employee id, job title, department, salary & manager
CREATE TABLE employee (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT UNSIGNED,
    manager_id INT UNSIGNED,
    FOREIGN KEY (manager_id) REFERENCES emp_role (id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES emp_role (id) ON DELETE CASCADE
);





