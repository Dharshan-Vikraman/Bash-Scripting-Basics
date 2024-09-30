#!/bin/bash

# System Information Report Script

# Variables
hostname=$(hostname)
cpu_info=$(lscpu | grep 'Model name')
memory_info=$(free -h | grep Mem)
disk_info=$(df -h /)
uptime_info=$(uptime -p)
network_info=$(ip a | grep 'inet ')

# Output to file
report_file="system_report.txt"

echo "System Report" > $report_file
echo "===================" >> $report_file
echo "Hostname: $hostname" >> $report_file
echo "$cpu_info" >> $report_file
echo "Memory Usage:" >> $report_file
echo "$memory_info" >> $report_file
echo "Disk Usage:" >> $report_file
echo "$disk_info" >> $report_file
echo "System Uptime: $uptime_info" >> $report_file
echo "Network Information:" >> $report_file
echo "$network_info" >> $report_file

echo "Report generated at: $(date)" >> $report_file

echo "System report generated and saved to $report_file"
