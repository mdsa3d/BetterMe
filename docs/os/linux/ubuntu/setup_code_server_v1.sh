#!/bin/bash

# Prompt user for domain name or IP address
read -p "Enter your domain name or IP address: " domain

# Prompt user for listen port
read -p "Enter the listen port: " listen_port

# Step 1: Update apt
sudo apt update

# Step 2: Install code-server
curl -fsSL https://code-server.dev/install.sh | sh

# Step 3: Start code-server
sudo systemctl start code-server@$USER

# Step 4: Enable code-server service
sudo systemctl enable --now code-server@$USER

# Step 5: Install nginx
sudo apt install nginx -y

# Step 6: Start nginx
sudo systemctl start nginx

# Step 7: Enable nginx
sudo systemctl enable nginx

# Step 8: Create Nginx Configuration file for Code-Server
sudo nano /etc/nginx/sites-available/code-server <<EOF
server {
    listen $listen_port;
    listen [::]:$listen_port;
    server_name $domain; # Use the domain name or IP address entered by the user
    location / {
        proxy_pass http://localhost:8080/;
        proxy_set_header Host $host;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection upgrade;
        proxy_set_header Accept-Encoding gzip;
    }
}
EOF

# Step 9: Enable the Nginx configuration
sudo ln -s ../sites-available/code-server /etc/nginx/sites-enabled/code-server

# Step 10: Restart nginx
sudo systemctl restart nginx

# Step 11: Restart code-server
sudo systemctl restart code-server@$USER

# Step 12: Get password from config file
password=$(grep "password:" ~/.config/code-server/config.yaml | awk '{print $2}')

# Step 13: Echo the password
echo "Your code-server password is: $password"
