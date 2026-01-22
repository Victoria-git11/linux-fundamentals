#!/bin/sh

echo "=== BASIC SYSTEM HEALTH CHECK ==="
echo "Date: $(date)"
echo "User: $(whoami)"
echo

uptime
df -h
free -h 2>/dev/null || echo "free not available"
ps aux | sort -nrk 3 | head -n 6
