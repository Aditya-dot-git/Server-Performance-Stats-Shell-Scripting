#!/bin/bash

# Function to get CPU usage
get_cpu_usage() {
    echo "CPU Usage:"
    mpstat | awk '$12 ~ /[0-9.]+/ {print "Used: " 100 - $12 "%"}'
    echo "------------------------"
}

# Function to get memory usage
get_memory_usage() {
    echo "Memory Usage:"
    free -m | awk 'NR==2{printf "Used: %sMB, Free: %sMB, Usage: %.2f%%\n", $3, $4, $3*100/($3+$4)}'
    echo "------------------------"
}

# Function to get disk usage
get_disk_usage() {
    echo "Disk Usage:"
    df -h --total | awk '$1 == "total" {printf "Used: %s, Free: %s, Usage: %s\n", $3, $4, $5}'
    echo "------------------------"
}

# Function to get top 5 processes by CPU usage
get_top_cpu_processes() {
    echo "Top 5 Processes by CPU Usage:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -6
    echo "------------------------"
}

# Function to get top 5 processes by memory usage
get_top_memory_processes() {
    echo "Top 5 Processes by Memory Usage:"
    ps -eo pid,comm,%mem --sort=-%mem | head -6
    echo "------------------------"
}

# Optional: OS Version, Uptime, Load Average, Logged-in Users, and Failed Login Attempts
get_system_info() {
    echo "System Information:"
    echo "OS Version: $(lsb_release -d | cut -f2-)"
    echo "Uptime: $(uptime -p)"
    echo "Load Average: $(uptime | awk -F'load average:' '{print $2}')"
    echo "Logged-in Users: $(who | wc -l)"
    echo "Failed Login Attempts: $(journalctl _COMM=sshd | grep 'Failed password' | wc -l)"
    echo "------------------------"
}

# Run all functions
get_cpu_usage
get_memory_usage
get_disk_usage
get_top_cpu_processes
get_top_memory_processes
get_system_info
