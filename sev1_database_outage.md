
# SEV1 Database Incident Simulation

## Alert

Application latency spike detected.

## Investigation

Checked CPU:

top

Checked connections:

SHOW PROCESSLIST;

Found blocking query.

## Blocking query example

SELECT *
FROM transactions
WHERE status = 'pending';

## Problem

Query missing index causing table scan.

## Fix

Added index:

CREATE INDEX idx_status
ON transactions(status);

## Result

Query time reduced from 40s to under 1s.

## Skills demonstrated

Incident response  
Database troubleshooting  
Performance optimization  
Production debugging
