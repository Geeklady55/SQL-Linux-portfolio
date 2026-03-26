
#!/bin/bash

THRESHOLD=80

df -h | awk 'NR>1 {print $5 " " $1}' | while read output;
do
    usage=$(echo $output | awk '{print $1}' | sed 's/%//')
    filesystem=$(echo $output | awk '{print $2}')

    if [ "$usage" -ge "$THRESHOLD" ]; then
        echo "WARNING: $filesystem is ${usage}% full"
    fi
done
