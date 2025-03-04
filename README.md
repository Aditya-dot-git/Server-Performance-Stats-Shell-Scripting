# Server Performance Monitoring Script

This script (`server-stats.sh`) is designed to analyze basic server performance metrics on any Linux-based system. It provides information on CPU, memory, and disk usage, as well as the top processes consuming system resources.

## Features
- Total CPU usage
- Total memory usage (free vs used, including percentage)
- Total disk usage (free vs used, including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- Additional system info (OS version, uptime, load average, logged-in users, failed login attempts)

## Prerequisites
Before running the script, ensure your system has the necessary dependencies installed:

### Install Required Packages
#### For Debian/Ubuntu-based Systems:
```bash
sudo apt update && sudo apt install sysstat -y
```
#### For CentOS/RHEL-based Systems:
```bash
sudo yum install sysstat -y
```
#### For Fedora:
```bash
sudo dnf install sysstat -y
```
#### For Arch Linux:
```bash
sudo pacman -S sysstat
```

## Installation & Execution
### Step 1: Clone or Download the Script


### Step 2: Grant Execution Permissions
```bash
chmod +x server-stats.sh
```

### Step 3: Run the Script
```bash
./server-stats.sh
```

## Expected Output
Upon execution, the script will display:
```bash
CPU Usage:
Used: 15.3%
------------------------
Memory Usage:
Used: 2048MB, Free: 1024MB, Usage: 67.89%
------------------------
Disk Usage:
Used: 30G, Free: 20G, Usage: 60%
------------------------
Top 5 Processes by CPU Usage:
 PID  COMMAND  %CPU
 1234 firefox 20.5
 5678 chrome  15.3
------------------------
Top 5 Processes by Memory Usage:
 PID  COMMAND  %MEM
 2345 java     10.2
 6789 python   9.8
------------------------
System Information:
OS Version: Ubuntu 22.04 LTS
Uptime: 3 hours, 45 minutes
Load Average: 0.56, 0.78, 1.02
Logged-in Users: 2
Failed Login Attempts: 4
------------------------
```

## Troubleshooting
- If you get `mpstat: command not found`, install `sysstat` as mentioned in prerequisites.
- If permission is denied, ensure execution permissions are granted: `chmod +x server-stats.sh`
- If the script does not run correctly, check for typos or missing dependencies.

## Customization
Feel free to modify the script to add more monitoring stats such as network usage, open ports, or scheduled cron jobs.

## License
This script is open-source and can be modified or distributed freely.

---
For any issues, feel free to report them!

