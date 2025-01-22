#!/bin/bash

echo "Server Performance Stats"
echo "====================================="
#Total CPU usage

cpu_usage=$(top -bn1 | grep "%Cpu(s)" | awk '{print 100 - $8"%"}')

echo "Total CPU usage: $cpu_usage"

# Retrieve memory information

Total_Memory=$(top -bn1 | grep "MiB Mem " | awk '{print $4}')
Free_Memory=$(top -bn1 | grep "MiB Mem " | awk '{print $6}')
Used_Memory=$(top -bn1 | grep "MiB Mem " | awk '{print $8}')

# Calculate percentage of used memory
Usage_Percentage=$(echo "scale=2; ($Used_Memory / $Total_Memory) * 100" | bc)

# Print usage percentage

echo "Memory Usage: $Usage_Percentage%"

# Retrieve disk information

Total_disk_size=$(df -h --total | grep "total" | awk '{gsub("G", ""); print $2}')
Free_disk_size=$(df -h --total | grep "total" | awk '{gsub("G", ""); print $4}')
Used_disk_size=$(df -h --total | grep "total" | awk '{gsub("G", ""); print $3}')


# Calculate percentage of disk used

Usage_Disk_Percentage=$(echo "scale=2; ($Used_disk_size / $Total_disk_size) * 100" | bc)

# Print usage percentage

echo "Disk Usage: $Usage_Disk_Percentage%"


#Top 5 processes by CPU usage

Top5_CPU_processes=$(ps -eo comm,%cpu --sort=-%cpu | head -5)

# Print Top 5 processes
echo "====================================="
echo "Top 5 Processes by CPU Usage"
echo "====================================="
echo -e "$Top5_CPU_processes"

#Top 5 processes by memory usage

Top5_Memory_processes=$(ps -eo comm,%mem --sort=-%mem | head -5)

# Print Top 5 processes
echo "====================================="
echo "Top 5 Processes by Memory Usage"
echo "====================================="
echo -e "$Top5_Memory_processes"

