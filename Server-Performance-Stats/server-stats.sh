#!/bin/bash

echo "==============================="
echo "   SERVER PERFORMANCE STATS"
echo "==============================="
echo ""

# OS Version
echo "OS Version:"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2
echo ""

# Uptime
echo "Uptime:"
uptime -p
echo ""

# Load Average
echo "Load Average:"
uptime | awk -F'load average:' '{ print $2 }'
echo ""

# Logged in Users
echo "Logged in Users:"
who
echo ""

# --------------------------------
# CPU Usage
# --------------------------------
echo "Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
awk '{print "CPU Used: " $2 + $4 "%"}'
echo ""

# --------------------------------
# Memory Usage
# --------------------------------
echo "Memory Usage:"
free -m | awk 'NR==2{
total=$2
used=$3
free=$4
printf "Total: %s MB\nUsed: %s MB\nFree: %s MB\nUsage: %.2f%%\n",
total, used, free, used*100/total
}'
echo ""

# --------------------------------
# Disk Usage
# --------------------------------
echo "Disk Usage:"
df -h / | awk 'NR==2{
print "Total:", $2
print "Used:", $3
print "Free:", $4
print "Usage:", $5
}'
echo ""

# --------------------------------
# Top 5 CPU Consuming Processes
# --------------------------------
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

# --------------------------------
# Top 5 Memory Consuming Processes
# --------------------------------
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo ""

# --------------------------------
# Failed Login Attempts
# --------------------------------
echo "Recent Failed Login Attempts:"
lastb | head -n 5 2>/dev/null
echo ""

echo "==============================="
echo "      END OF REPORT"
echo "==============================="
