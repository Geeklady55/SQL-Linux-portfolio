# Linux Server Troubleshooting

## Scenario
A Linux application server became unresponsive.

## Symptoms
Users could not access the hosted application.

## Investigation Steps
1. Verified host availability
2. Checked CPU and memory usage
3. Reviewed disk space with df -h
4. Examined failed services with systemctl --failed
5. Reviewed recent errors with journalctl

## Findings
Disk usage was critically high and a dependent service failed during restart.

## Root Cause
A log directory grew unexpectedly and consumed available disk space.

## Resolution
Removed unnecessary files, rotated logs, restarted affected services, and added disk monitoring.

## Skills Demonstrated
Linux administration, service troubleshooting, log analysis, incident response
