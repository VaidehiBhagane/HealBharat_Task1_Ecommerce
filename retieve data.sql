-- TOP 5 SELLING PRODUCTS BY QUANTITY
SELECT 
    p.product_id, 
    p.product_name, 
    SUM(oi.quantity) AS total_quantity_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;


-- USERS WHO SPENT MORE THAN 10000/-
SELECT 
    u.user_id, 
    u.name, 
    u.email, 
    SUM(p.amount) AS total_spent
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
JOIN Payments p ON o.order_id = p.order_id
WHERE p.status = 'SUCCESS'
GROUP BY u.user_id, u.name, u.email
HAVING SUM(p.amount) > 10000;

-- MOST POPULAR PRODUCT CATEGORY
SELECT 
    c.category_id, 
    c.category_name, 
    SUM(oi.quantity) AS total_items_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories c ON p.category_id = c.category_id
GROUP BY c.category_id, c.category_name
ORDER BY total_items_sold DESC
LIMIT 1;

-- DAILY REVENUE
SELECT 
    p.payment_date, 
    SUM(p.amount) AS daily_revenue
FROM Payments p
WHERE p.status = 'SUCCESS'
GROUP BY p.payment_date
ORDER BY p.payment_date DESC;


-- FAILED PAYMENTS WITH REASON
SELECT 
    p.payment_id, 
    o.order_id, 
    u.user_id, 
    u.name, 
    p.amount, 
    p.payment_date, 
    p.failure_reason
FROM Payments p
JOIN Orders o ON p.order_id = o.order_id
JOIN Users u ON o.user_id = u.user_id
WHERE p.status = 'FAILED';

