
# MySQL Connection Exhaustion Incident

## Scenario
An application began returning database connection errors.

## Symptoms
Users saw failures during login and transaction processing.

## Investigation Steps
1. Checked MySQL service status
2. Reviewed active sessions using SHOW PROCESSLIST
3. Checked current connection count
4. Identified long-running sessions
5. Investigated reporting query behavior

## Findings
Several long-running queries were consuming available connections.

## Root Cause
Unoptimized reporting activity caused connection exhaustion.

## Resolution
Terminated stuck sessions, optimized the query, and reviewed connection thresholds.

## Skills Demonstrated
MySQL operations, process analysis, production troubleshooting, performance tuning
