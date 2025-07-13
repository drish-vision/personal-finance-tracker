-- Monthly Total --
SELECT 
    u.name,
    DATE_FORMAT(e.date, '%Y-%m') AS month,
    SUM(e.amount) AS total_expenses,
    (SELECT SUM(i.amount) 
     FROM Income i 
     WHERE i.user_id = u.user_id AND DATE_FORMAT(i.date, '%Y-%m') = DATE_FORMAT(e.date, '%Y-%m')) AS total_income
FROM Expenses e
JOIN Users u ON e.user_id = u.user_id
GROUP BY u.name, month;

-- Category-wise Spending --
SELECT 
    u.name,
    c.category_name,
    SUM(e.amount) AS total_spent
FROM Expenses e
JOIN Categories c ON e.category_id = c.category_id
JOIN Users u ON e.user_id = u.user_id
GROUP BY u.name, c.category_name;
