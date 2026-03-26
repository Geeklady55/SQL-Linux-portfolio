
#!/bin/bash

LOG_FILE="/var/log/syslog"

echo "===== LAST 20 ERRORS ====="
grep -i "error" "$LOG_FILE" | tail -20
