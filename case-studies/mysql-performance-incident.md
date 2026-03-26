# MySQL Performance Incident

## Scenario
A reporting dashboard was taking more than 30 seconds to load.

## Symptoms
Users reported slow application response times during peak business hours.

## Investigation Steps
1. Reviewed the reporting query
2. Checked execution plan with EXPLAIN
3. Identified full table scan on a large orders table
4. Rewrote date filtering to avoid applying functions on indexed columns
5. Reduced selected fields to only required columns

## Findings
The query was using DATE(order_date), which prevented effective index use.

## Root Cause
Poor query filtering caused unnecessary scanning of a large dataset.

## Resolution
Rewrote the WHERE clause and improved indexing strategy.

## Skills Demonstrated
MySQL troubleshooting, query optimization, performance analysis, root cause analysis
