EXPLAIN
SELECT order_id, customer_id, status
FROM orders
WHERE customer_id = 101
  AND status = 'OPEN';


CREATE INDEX idx_orders_customer_status
ON orders(customer_id, status);
