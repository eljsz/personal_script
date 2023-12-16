#!/bin/sh

# Check if Python 3.8 is installed
command -v python3.8 >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Python 3.8 is not installed, installing..."
    sudo apt-get update
    sudo apt-get install -y python3.8
else
    echo "Python 3.8 is already installed."
fi

# Check if pip3 is installed
command -v pip3 >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "pip is not installed, installing..."
    sudo apt-get install -y python3-pip
else
    echo "pip is already installed."
fi

# Install the requests module
echo "Installing requests module..."
pip3 install requests
pip3 install multidict
pip3 install attr
pip3 install typing_extensions
pip3 install aiohttp

# Display a message indicating the installation is complete
echo "Installation complete."
