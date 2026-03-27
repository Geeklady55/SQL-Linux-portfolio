
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(order_total) AS total_revenue
FROM orders
GROUP BY customer_id
ORDER BY total_revenue DESC;


SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(*) AS orders_count,
    SUM(order_total) AS revenue
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;


SELECT 
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(order_total) AS total_revenue
FROM orders
GROUP BY customer_id
ORDER BY total_revenue DESC;

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(*) AS orders_count,
    SUM(order_total) AS revenue
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
