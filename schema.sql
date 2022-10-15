CREATE DATABASE employee_tracker;
-- drops use with caution--
DROP DATABASE IF EXISTS employee_tracker;

-- creates--
CREATE DATABASE employee_tracker;

-- USE employee_tracker;
USE employee_tracker;

SELECT DATABASE();

CREATE TABLE department (
    department_id INT NOT NULL,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    role_id INT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT NOT NULL
);

CREATE TABLE employee (
    employee_id INT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT
);

INSERT INTO department (id, name)
VALUES
    (10, "Sales"),
    (20, "Legal"),
    (30, "Technology"),
    (40, "Administrative"),
    (50, "HR"),
    (60, "Marketing"),
    (70, "Production"),
    (80, "Service");

INSERT INTO role (id, name)
VALUES
    (2, "Account Manager", 70000, 10),
    (4, "Counsel", 150000, 20),
    (6, "Web Engineer", 125000, 30),
    (8, "Secretary", 50000, 40),
    (12, "Hiring Manager", 65000, 50),
    (14, "Social Media Manager", 40000, 60),
    (16, "Assembler", 30000, 70),
    (18, "Customer Care Supervisor", 35000, 80);

INSERT INTO manager (id, name)
VALUES
    (001, "bob", "smith", 2, 5),
    (002, "sally", "clark", 4, 15),
    (003, "Li", "Chen", 6, 25),
    (004, "mark", "thomas", 8, 35),
    (005, "Sarah", "kool", 10, 45),
    (006, "Cat", "white", 12, 55),
    (007, "daniel", "weird", 14, 70),
    (008, "joseph", "brown", 16, 65);

