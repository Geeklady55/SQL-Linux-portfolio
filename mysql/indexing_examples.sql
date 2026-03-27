EXPLAIN
SELECT order_id, customer_id, status
FROM orders
WHERE customer_id = 101
  AND status = 'OPEN';


CREATE INDEX idx_orders_customer_status
ON orders(customer_id, status);



Index usage check:

EXPLAIN SELECT *
FROM orders
WHERE customer_id = 100;

Used EXPLAIN to confirm index usage and detect table scans.


Connection monitoring

SHOW STATUS LIKE 'Threads_connected';
SHOW STATUS LIKE 'Threads_running';
