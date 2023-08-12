#!/bin/bash

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Create a directory for the script

# Create the Node.js script
echo "
const { spawn } = require('child_process');

const checkAndStartXUI = () => {
  try {
    console.log('Checking x-ui status...');
    
    const cmd = spawn('sudo', ['systemctl', 'status', 'x-ui']);

    cmd.stdout.on('data', (data) => {
      const output = data.toString();
      console.log('systemctl status output:', output);
      
      if (output.includes('Active: active (running)')) {
        console.log('x-ui is running.');
      } else {
        console.log('x-ui is not running. Starting x-ui...');
        startXUI();
      }
    });

    cmd.stderr.on('data', (data) => {
      console.error('Error:', data.toString());
    });

    cmd.on('close', (code) => {
      console.log(`systemctl status command exited with code ${code}`);
    });
  } catch (error) {
    console.error('Error:', error.message);
  }
};

const startXUI = () => {
  console.log('Starting x-ui...');
  
  const startCmd = spawn('sudo', ['systemctl', 'start', 'x-ui']);

  startCmd.stdout.on('data', (data) => {
    console.log(data.toString());
  });

  startCmd.stderr.on('data', (data) => {
    console.error('Error:', data.toString());
  });

  startCmd.on('close', (code) => {
    console.log(`systemctl start x-ui command exited with code ${code}`);
  });
};

setInterval(checkAndStartXUI, 30000); // Every 10 seconds

// Initial check when the script starts
checkAndStartXUI();


" > check_and_start_x-ui.js

# Run the Node.js script
nohup node check_and_start_x-ui.js  >check_and_start_x.log 2>&1 &
