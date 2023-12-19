```sh
#!/bin/sh

# Update the package list
sudo apt-get update

# Install dependencies
sudo apt-get install -y ca-certificates curl gnupg

# Create a directory for the GPG key
sudo mkdir -p /etc/apt/keyrings

# Download the GPG key for the Node.js repository
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# Add the Node.js repository to the sources list
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

# Update the package list
sudo apt-get update

# Install Node.js
sudo apt-get install nodejs -y

# Install npm
sudo apt-get install npm -y
```