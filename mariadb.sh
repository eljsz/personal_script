#!/bin/bash

# Install MariaDB
sudo apt update
sudo apt install mariadb-server -y

# Start and enable MariaDB service
sudo systemctl start mariadb
sudo systemctl enable mariadb

# Set root password interactively
sudo mysql_secure_installation

# Enable remote access
read -p "Enter remote access password for root user: " remote_password
echo "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '$remote_password' WITH GRANT OPTION;" | sudo mysql
echo "FLUSH PRIVILEGES;" | sudo mysql

# Update MariaDB configuration to allow remote connections
sudo sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

# Restart MariaDB service
sudo systemctl restart mariadb

# Print completion message
echo "MariaDB installation, remote access configuration, and auto-start completed."
