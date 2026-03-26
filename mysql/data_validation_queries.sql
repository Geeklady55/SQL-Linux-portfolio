
SELECT 
    o.order_id,
    o.total_amount,
    SUM(oi.quantity * oi.unit_price) AS calculated_total
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY o.order_id, o.total_amount
HAVING o.total_amount <> SUM(oi.quantity * oi.unit_price);
