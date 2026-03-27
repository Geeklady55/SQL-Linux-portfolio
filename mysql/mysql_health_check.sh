
#!/bin/bash

mysql -e "SHOW DATABASES;"

mysql -e "SHOW STATUS LIKE 'Uptime';"

mysql -e "SHOW STATUS LIKE 'Threads_connected';"

mysql -e "SHOW STATUS LIKE 'Slow_queries';"

mysql -e "SHOW VARIABLES LIKE 'max_connections';"


Bonus Vwersion
Add alert logic

THREADS=$(mysql -N -e "SHOW STATUS LIKE 'Threads_connected';" | awk '{print $2}')

if [ "$THREADS" -gt 100 ]
then
  echo "WARNING HIGH CONNECTION COUNT"
fi
