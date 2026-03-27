
SELECT 
    o.order_id,
    o.total_amount,
    SUM(oi.quantity * oi.unit_price) AS calculated_total
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY o.order_id, o.total_amount
HAVING o.total_amount <> SUM(oi.quantity * oi.unit_price);


Advanced example:

SELECT 
    orders.order_id,
    orders.total,
    SUM(order_items.price * order_items.quantity) AS calculated_total
FROM orders
JOIN order_items 
ON orders.order_id = order_items.order_id
GROUP BY orders.order_id
HAVING calculated_total != orders.total;
