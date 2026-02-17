Mini SysAdmin Toolkit

A lightweight Bash-based toolkit for monitoring and automatically restarting Linux services.

Features

- Checks if a systemd service is active
- Automatically restarts inactive services
- Logs actions with timestamps
- Uses proper exit codes for automation
- Designed with security awareness in mind

Usage

Run the script with sudo:

sudo ./scripts/check_services.sh <service_name>

Example:

sudo ./scripts/check_services.sh nginx

Exit Codes

0 - Service running or successfully restarted
1 - Invalid input
2 - Restart failed

Tech Stack

- Bash
- systemd
- Linux service management

Author

Georgi Raykov

