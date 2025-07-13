CREATE VIEW Monthly_Balance AS
SELECT 
    u.name,
    DATE_FORMAT(i.date, '%Y-%m') AS month,
    SUM(i.amount) AS total_income,
    (SELECT SUM(e.amount) FROM Expenses e 
     WHERE e.user_id = u.user_id AND DATE_FORMAT(e.date, '%Y-%m') = DATE_FORMAT(i.date, '%Y-%m')) AS total_expenses,
    (SUM(i.amount) -
     (SELECT IFNULL(SUM(e.amount), 0) FROM Expenses e 
      WHERE e.user_id = u.user_id AND DATE_FORMAT(e.date, '%Y-%m') = DATE_FORMAT(i.date, '%Y-%m'))) AS balance
FROM Income i
JOIN Users u ON i.user_id = u.user_id
GROUP BY u.user_id, month;
