-- Call in employee database containing tables department, employee, and role
USE employee_db;

-- When user chooses "department" they are presented with a table that includes department id and department name
INSERT INTO department (name)
    VALUES
        ("General Management"),
        ("Marketing Department"),
        ("Finance Department"),
        ("Operations"),
        ("Sales Department"),
        ("HR Department"),
        ("Purchasing");

INSERT INTO emp_role (department_id, salary, manager)
    VALUES
        ("Carly", "Sufrin", "Physicist", 004, 120000, "Scout"),
        ("Ness", "Benjamin", "DNA Analysist", 003, 75000, "Kelvin"),
        ("Ben", "Psych", "Physicist", 007, 110000, "Toni"),
        ("Lauren", "Honey", "Recruiter", 005, 65000, "Sylvester"),
        ("Courtney", "Shadyside", 002, 70000, "Diane"),
        ("Jess", "Torsicky", "Attorney", 001, 150000, "Shea"),
        ("Stacie", "Mitchell", "Requisitioner", 006, 100000, "Dhobi" );

-- When user chooses "employee" they are presented with a table that includes employee id, first / last name, 
-- job title, department, salary and manager
INSERT INTO employee (first_name, last_name, emp_id, role_id, department_id, salary, manager)
    VALUES
        ("Carly", "Sufrin", "Physicist", 004, 120000, "Scout"),
        ("Ness", "Benjamin", "DNA Analysist", 003, 75000, "Kelvin"),
        ("Ben", "Psych", "Physicist", 007, 110000, "Toni"),
        ("Lauren", "Honey", "Recruiter", 005, 65000, "Sylvester"),
        ("Courtney", "Shadyside", 002, 70000, "Diane"),
        ("Jess", "Torsicky", "Attorney", 001, 150000, "Shea"),
        ("Stacie", "Mitchell", "Requisitioner", 006, 100000, "Dhobi" );


