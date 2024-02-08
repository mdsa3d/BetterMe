#!/bin/bash

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Install required dependencies
sudo apt install -y curl

# Install code-server
curl -fsSL https://code-server.dev/install.sh | sh

# Start code-server service
sudo systemctl start code-server@$USER

# Enable code-server service to start at boot
sudo systemctl enable code-server@$USER

# Print the status of code-server service
echo "Code-server status:"
sudo systemctl status code-server@$USER

# Note: You may need to configure a reverse proxy or firewall rules to access code-server externally
