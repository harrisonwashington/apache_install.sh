#!/bin/bash

# Check for sudo privileges
if [[ ! $EUID -eq 0 ]]; then
  echo "This script must be run with sudo privileges."
  exit 1
fi

# Update the package list
sudo apt update

# Install Apache
sudo apt install httpd

# Enable and start Apache
sudo systemctl enable httpd
sudo systemctl start httpd

# Check the status of Apache
sudo systemctl status httpd
