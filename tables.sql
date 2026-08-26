CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2)
);



CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(500),
    start_date DATE,
    end_date DATE,
    department_id INT
);


INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(5, NULL),
(4, 'Marketing')




-- Insert Employees up to ID 50
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary) VALUES
(1, 'John', 'Doe', 1, '2020-01-15', 60000.00),
(2, 'Jane', 'Smith', 2, '2019-05-20', 75000.00),
(3, 'Bob', 'Johnson', 3, '2021-03-10', 80000.00),
(4, 'Alice', 'Williams', 1, '2022-02-28', 70000.00),
(5, 'Charlie', 'Brown', 4, '2023-07-05', 65000.00),
(6, 'Eva', 'Anderson', 2, '2020-07-10', 68000.00),
(7, 'Michael', 'Clark', 3, '2019-09-25', 72000.00),
(8, 'Sophie', 'Garcia', 4, '2022-01-05', 60000.00),
(9, 'Daniel', 'Miller', 1, '2023-03-20', 78000.00),
(10, 'Olivia', 'Thomas', 3, '2021-11-12', 85000.00),
(11, 'Emily', 'Johnson', 1, '2021-05-10', 72000.00),
(12, 'Andrew', 'Smith', 2, '2020-03-15', 68000.00),
(13, 'Mia', 'Williams', 3, '2019-08-20', 75000.00),
(14, 'Ryan', 'Davis', 4, '2022-02-01', 80000.00),
(15, 'Ava', 'Martinez', 1, '2023-01-10', 65000.00)
-- Continue adding more employees up to employee_id 50



-- Insert Employees up to ID 85
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary) VALUES
(16, 'Liam', 'Taylor', 2, '2020-09-10', 69000.00),
(17, 'Aria', 'Moore', 3, '2019-12-05', 76000.00),
(18, 'Jackson', 'White', 4, '2022-04-15', 71000.00),
(19, 'Isabella', 'Hall', 1, '2023-02-20', 77000.00),
(20, 'Henry', 'Anderson', 3, '2021-08-01', 82000.00),
(21, 'Grace', 'Brown', 1, '2020-06-15', 63000.00),
(22, 'Carter', 'Harris', 4, '2019-07-20', 68000.00),
(23, 'Nova', 'Young', 2, '2022-01-25', 73000.00),
(24, 'Sebastian', 'Martin', 3, '2023-04-10', 79000.00),
(25, 'Zoe', 'Scott', 1, '2021-11-12', 85000.00)
-- Continue adding more employees up to employee_id 50 + 35


-- Insert Employees up to ID 105
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary) VALUES
(26, 'Mason', 'Lewis', 2, '2020-07-10', 72000.00),
(27, 'Luna', 'Ward', 3, '2019-10-15', 78000.00),
(28, 'Ethan', 'Baker', 4, '2022-03-20', 69000.00),
(29, 'Aurora', 'Kelly', 1, '2023-02-01', 76000.00),
(30, 'Logan', 'Turner', 3, '2021-09-10', 81000.00),
(31, 'Stella', 'Carter', 1, '2020-05-15', 64000.00),
(32, 'Dylan', 'Ward', 4, '2019-08-20', 70000.00),
(33, 'Levi', 'Hill', 2, '2022-02-25', 75000.00),
(34, 'Hazel', 'Fisher', 3, '2023-05-10', 82000.00),
(35, 'Owen', 'Reed', 1, '2021-12-12', 88000.00),
(36, 'Madison', 'Murray', 2, '2020-04-01', 71000.00),
(37, 'Elijah', 'Cole', 3, '2019-06-15', 77000.00),
(38, 'Penelope', 'Floyd', 4, '2022-11-20', 70000.00),
(39, 'Caleb', 'Wright', 1, '2023-03-01', 76000.00),
(40, 'Violet', 'Johnson', 3, '2021-10-10', 83000.00),
(41, 'Gabriel', 'Dixon', 1, '2020-08-15', 66000.00),
(42, 'Sophia', 'Hayes', 4, '2019-09-20', 72000.00),
(43, 'Lincoln', 'Reid', 2, '2022-04-25', 77000.00),
(44, 'Aubrey', 'Ramsey', 3, '2023-07-10', 84000.00),
(45, 'Lucas', 'Baldwin', 1, '2022-02-12', 89000.00),
(46, 'Alice', 'Williams', NULL, '2022-02-28', 70000.00)



-- Insert 50 Projects
INSERT INTO projects (project_id, project_name, start_date, end_date, department_id) VALUES
(101, 'Employee Portal', '2021-02-01', '2021-12-31', 3),
(102, 'Financial Software Upgrade', '2022-06-15', '2022-12-31', 2),
(103, 'Marketing Campaign', '2023-03-01', '2023-09-30', 4),
(104, 'Training Program', '2023-08-10', '2023-12-31', 1),
(105, 'IT Infrastructure Expansion', '2024-01-15', '2024-06-30', 3)
-- Continue adding more projects up to project_id 150


-- Insert Projects up to ID 170
INSERT INTO projects (project_id, project_name, start_date, end_date, department_id) VALUES
(106, 'Mobile App Development', '2023-04-15', '2023-11-30', 3),
(107, 'Customer Satisfaction Survey', '2024-03-01', '2024-05-31', 4),
(108, 'Data Security Enhancement', '2023-09-10', '2023-12-31', 2),
(109, 'Employee Wellness Program', '2022-08-01', '2022-12-31', 1),
(110, 'E-commerce Platform Upgrade', '2024-02-15', '2024-09-30', 4),
(111, 'Product Launch Campaign', '2023-05-01', '2023-09-30', 4),
(112, 'Website Redesign', '2024-04-15', '2024-10-31', 3),
(113, 'Supply Chain Optimization', '2023-10-10', '2024-03-31', 2),
(114, 'Social Media Integration', '2022-11-01', '2023-04-30', 4),
(115, 'Customer Support System', '2023-01-15', '2023-06-30', 1),
(116, 'AI Integration Project', '2022-06-01', '2022-12-31', 3),
(117, 'Green Initiative', '2023-07-15', '2023-12-31', 2),
(118, 'Quality Assurance Program', '2024-01-01', '2024-04-30', 1),
(119, 'International Expansion', '2022-10-15', '2023-03-31', 4),
(120, 'Employee Training Platform', '2023-04-10', '2023-10-31', 1),
(121, 'Social Responsibility Campaign', '2024-05-01', '2024-08-31', 4),
(122, 'Smart Office Implementation', '2023-11-10', '2024-05-31', 3),
(123, 'Customer Feedback System', '2022-12-01', '2023-04-30', 2),
(124, 'Digital Marketing Overhaul', '2023-05-15', '2023-11-30', 4),
(125, 'Health and Wellness App', '2023-12-10', '2024-06-30', 1)


-- Insert Projects up to ID 185
INSERT INTO projects (project_id, project_name, start_date, end_date, department_id) VALUES
(126, 'Automated Workflow System', '2024-01-15', '2024-06-30', 3),
(127, 'Sustainability Initiative', '2024-07-01', '2024-12-31', 4),
(128, 'Cloud Infrastructure Upgrade', '2023-02-01', '2023-08-31', 2),
(129, 'Employee Recognition Program', '2022-09-15', '2022-12-31', 1),
(130, 'Virtual Collaboration Platform', '2023-06-01', '2023-12-31', 3),
(131, 'Diversity and Inclusion Campaign', '2024-01-10', '2024-05-31', 4),
(132, 'Innovation Lab Setup', '2023-08-15', '2023-12-31', 2),
(133, 'Sales Performance Optimization', '2022-12-01', '2023-04-30', 4),
(134, 'Customer Relationship Management (CRM) Implementation', '2023-05-15', '2023-11-30', 1),
(135, 'Employee Engagement Survey', '2024-01-01', '2024-06-30', 3),
(136, 'Smart Manufacturing Project', '2023-07-10', '2023-12-31', 2),
(137, 'IT Security Audit', '2022-03-01', '2022-09-30', 1),
(138, 'Social Media Analytics Platform', '2023-01-15', '2023-06-30', 4),
(139, 'Learning Management System (LMS) Implementation', '2024-02-01', '2024-08-31', 1),
(140, 'Energy Efficiency Project', '2023-10-15', '2024-04-30', 3),
(141, 'Training Program', '2023-08-10', '2023-12-31', NULL)