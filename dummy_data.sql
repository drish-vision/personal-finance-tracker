INSERT INTO Users (name, email)
VALUES ('Alice', 'alice@example.com'),
       ('Bob', 'bob@example.com');

INSERT INTO Categories (category_name)
VALUES ('Groceries'), ('Utilities'), ('Transport'), ('Entertainment'), ('Rent');

INSERT INTO Income (user_id, amount, source, date)
VALUES 
(1, 50000, 'Salary', '2025-07-01'),
(1, 2000, 'Freelance', '2025-07-10'),
(2, 45000, 'Salary', '2025-07-01');

INSERT INTO Expenses (user_id, amount, category_id, date, description)
VALUES
(1, 5000, 1, '2025-07-03', 'Grocery shopping'),
(1, 1500, 2, '2025-07-05', 'Electricity bill'),
(1, 1000, 4, '2025-07-06', 'Netflix'),
(2, 2000, 2, '2025-07-05', 'Water bill');
