#!/bin/bash

echo "===== HOST INFO ====="
hostname
date
uptime

echo ""
echo "===== CPU / MEMORY ====="
top -b -n1 | head -15
free -h

echo ""
echo "===== DISK ====="
df -h
lsblk

echo ""
echo "===== FAILED SERVICES ====="
systemctl --failed

echo ""
echo "===== RECENT ERRORS ====="
journalctl -p err -n 30 --no-pager
