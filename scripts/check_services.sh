#!/bin/bash

log_file="../check_tool.log"
service =$1

if [ -z "$service" ]; then

  echo "Usage: $0 <service_name>"
  exit 1

fi
status=$(systemctl is-active $service)
time=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$status" != "active" ]; then

  echo "$time - $service is not active. Attempting restart.." | tee -a "$log_file"
  systemctl restart $service

  new_status=$(systemctl is-active $service)

  if [ "$new_status == "active" ]; then

    echo "$time - $service restarted successfully." | tee -a "$log_file"
    exit 0
  else
    echo "$time - failed to restart $service" | tee -a "log_file"
    exit 2
  fi
else
  echo "$time - $service is running normally" | tee -a "log_file"
  ecit 0
fi

