#!/bin/bash

echo "===== LOAD ====="
uptime

echo ""
echo "===== TOP CPU ====="
ps aux --sort=-%cpu | head -10

echo ""
echo "===== TOP MEMORY ====="
ps aux --sort=-%mem | head -10

echo ""
echo "===== NETWORK LISTENERS ====="
ss -tulnp
