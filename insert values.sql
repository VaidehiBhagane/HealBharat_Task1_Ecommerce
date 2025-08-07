INSERT INTO Users (user_id, name, email, created_at) VALUES
(1, 'Anita Shah',  'anita@email.com',     '2024-01-10'),
(2, 'Raj Kumar',   'raj@email.com',       '2024-02-15'),
(3, 'Sneha Menon', 'sneha@email.com',     '2024-03-20'),
(4, 'Amir Khan',   'amir@email.com',      '2024-04-08'),
(5, 'John Doe',    'john@email.com',      '2024-05-01'),
(6, 'Priya Singh', 'priya@email.com',     '2024-05-14'),
(7, 'Lisa Wong',   'lisa@email.com',      '2024-06-11'),
(8, 'Vikram Patel','vikram@email.com',    '2024-06-16'),
(9, 'Anjali Rao',  'anjali@email.com',    '2024-07-02'),
(10,'Samir Gupta', 'samir@email.com',     '2024-07-10');


INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Apparel'),
(4, 'Home & Kitchen'),
(5, 'Gaming'),
(6, 'Beauty'),
(7, 'Sports'),
(8, 'Toys'),
(9, 'Groceries'),
(10, 'Automotive');


INSERT INTO Products (product_id, product_name, category_id, price) VALUES
(1, 'Smartphone X',         1, 20000.00),
(2, 'Bluetooth Headphones', 1, 2500.00),
(3, 'Mystery Novel',        2, 350.00),
(4, 'T-shirt',              3, 600.00),
(5, 'Laptop',               1, 45000.00),
(6, 'Air Fryer',            4, 7000.00),
(7, 'Video Game Controller',5, 3500.00),
(8, 'Face Cream',           6, 900.00),
(9, 'Football',             7, 1400.00),
(10,'Toy Train',            8, 800.00);


INSERT INTO Orders (order_id, user_id, order_date, status) VALUES
(1001, 1,  '2024-06-01', 'Completed'),
(1002, 2,  '2024-06-02', 'Completed'),
(1003, 3,  '2024-06-03', 'Completed'),
(1004, 4,  '2024-06-04', 'Completed'),
(1005, 5,  '2024-06-05', 'Completed'),
(1006, 6,  '2024-06-06', 'Completed'),
(1007, 7,  '2024-06-07', 'Completed'),
(1008, 8,  '2024-06-08', 'Completed'),
(1009, 9,  '2024-06-09', 'Completed'),
(1010, 10, '2024-06-10', 'Completed');


INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES
(501, 1001, 1,  1, 20000.00),
(502, 1001, 2,  2, 2500.00),
(503, 1002, 3,  3, 350.00),
(504, 1002, 4,  2, 600.00),
(505, 1003, 5,  1, 45000.00),
(506, 1004, 6,  1, 7000.00),
(507, 1005, 7,  2, 3500.00),
(508, 1006, 8,  1, 900.00),
(509, 1007, 9,  1, 1400.00),
(510, 1008, 10, 3, 800.00);


INSERT INTO Payments (payment_id, order_id, amount, payment_date, status, failure_reason) VALUES
(9001, 1001, 25000.00, '2024-06-01', 'SUCCESS', NULL),
(9002, 1002, 2350.00,  '2024-06-02', 'FAILED', 'Insufficient Funds'),
(9003, 1003, 45000.00, '2024-06-03', 'SUCCESS', NULL),
(9004, 1004, 7000.00,  '2024-06-04', 'SUCCESS', NULL),
(9005, 1005, 7000.00,  '2024-06-05', 'FAILED', 'Card Expired'),
(9006, 1006, 900.00,   '2024-06-06', 'SUCCESS', NULL),
(9007, 1007, 1400.00,  '2024-06-07', 'SUCCESS', NULL),
(9008, 1008, 2400.00,  '2024-06-08', 'SUCCESS', NULL),
(9009, 1009, 1500.00,  '2024-06-09', 'SUCCESS', NULL),
(9010, 1010, 3200.00,  '2024-06-10', 'FAILED', 'Network Error');


