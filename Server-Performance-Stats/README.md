# Server Performance Stats

A Bash script to analyze basic server performance statistics on Linux systems.

## Project URL

[https://github.com/Shubham-Salunke/devops-lab/tree/master/Server-Performance-Stats](https://github.com/Shubham-Salunke/devops-lab/tree/master/Server-Performance-Stats)

## Description

This script provides essential server performance metrics including CPU usage, memory usage, disk usage, and top processes by CPU and memory consumption. It also includes additional information like OS version, uptime, load average, logged-in users, and failed login attempts.

## Requirements

- Linux operating system
- Bash shell
- Standard system utilities: `top`, `free`, `df`, `ps`, `uptime`, `who`, `lastb` (may require sudo for failed login attempts)

## How to Use

1. Clone or download the repository:
   ```
   git clone https://github.com/Shubham-Salunke/devops-lab.git
   cd Server-Performance-Stats
   ```

2. Make the script executable:
   ```
   chmod +x server-stats.sh
   ```

3. Run the script:
   ```
   ./server-stats.sh
   ```

   For failed login attempts, you may need to run with sudo:
   ```
   sudo ./server-stats.sh
   ```

## Output

The script displays:
- OS Version
- Uptime
- Load Average
- Logged in Users
- Total CPU Usage
- Memory Usage (Total, Used, Free, Percentage)
- Disk Usage (Total, Used, Free, Percentage)
- Top 5 Processes by CPU Usage
- Top 5 Processes by Memory Usage
- Recent Failed Login Attempts

## License

[MIT License](LICENSE)
