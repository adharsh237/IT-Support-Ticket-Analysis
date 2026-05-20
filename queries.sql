CREATE TABLE support_tickets (
    ticket_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    issue_type VARCHAR(100),
    priority_level VARCHAR(20),
    ticket_status VARCHAR(20),
    assigned_to VARCHAR(100),
    resolution_time_hours INT,
    created_date DATE
);

INSERT INTO support_tickets
(employee_name, department, issue_type, priority_level,
ticket_status, assigned_to, resolution_time_hours, created_date)

VALUES
('John Smith', 'Finance', 'Password Reset', 'Low', 'Closed', 'Mike Johnson', 1, '2026-01-02'),

('Sarah Lee', 'HR', 'Laptop Issue', 'Medium', 'Closed', 'David Miller', 5, '2026-01-03'),

('Michael Brown', 'IT', 'VPN Access', 'High', 'Open', 'Chris Adams', 12, '2026-01-04'),

('Emily Davis', 'Marketing', 'Email Issue', 'Medium', 'Closed', 'Mike Johnson', 3, '2026-01-05'),

('Daniel Wilson', 'Finance', 'Software Installation', 'Low', 'Closed', 'David Miller', 2, '2026-01-06'),

('Jessica Taylor', 'Sales', 'Network Connectivity', 'High', 'Open', 'Chris Adams', 10, '2026-01-07'),

('Matthew Thomas', 'Operations', 'Printer Issue', 'Low', 'Closed', 'Mike Johnson', 2, '2026-01-08'),

('Olivia Martin', 'HR', 'Account Locked', 'Medium', 'Closed', 'David Miller', 4, '2026-01-09'),

('James Anderson', 'IT', 'System Crash', 'High', 'Open', 'Chris Adams', 15, '2026-01-10'),

('Sophia White', 'Marketing', 'Teams Access', 'Low', 'Closed', 'Mike Johnson', 1, '2026-01-11');

SELECT * FROM support_tickets;

SELECT *
FROM support_tickets
WHERE ticket_status = 'Open';

SELECT COUNT(*) AS total_tickets
FROM support_tickets;

SELECT department,
COUNT(*) AS total_tickets
FROM support_tickets
GROUP BY department
ORDER BY total_tickets DESC;

SELECT AVG(resolution_time_hours) AS avg_resolution_time
FROM support_tickets;

SELECT employee_name,
issue_type,
priority_level
FROM support_tickets
WHERE priority_level = 'High';

SELECT assigned_to,
COUNT(*) AS total_assigned
FROM support_tickets
GROUP BY assigned_to
ORDER BY total_assigned DESC;

SELECT *
FROM support_tickets
WHERE ticket_status = 'Closed';

SELECT employee_name,
issue_type,
resolution_time_hours
FROM support_tickets
WHERE resolution_time_hours > 5;