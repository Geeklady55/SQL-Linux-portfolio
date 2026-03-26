
# Incident Report Sample

## Hostname
app-server-01

## Date
2026-03-25

## Summary
Server performance degradation observed due to high disk utilization and service failures.

## Key Findings
- /var volume at 92%
- mysql service healthy
- nginx service failed to restart
- multiple recent error messages in system journal

## Recommended Next Steps
- clean old logs
- enable log rotation review
- add disk usage alerting
