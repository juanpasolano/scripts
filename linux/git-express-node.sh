#!/bin/bash

# Update package lists
sudo apt-get update

# Install curl (needed for Node.js installation)
sudo apt-get install -y curl

# Install Node.js (using the official NodeSource setup script)
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install PM2 globally
sudo npm install -g pm2

# Install Git
sudo apt-get install -y git

# Generate an SSH key pair (ed25519)
ssh-keygen -t ed25519 -C "your_email@example.com"

# Display the public key
echo "Your public SSH key is:"
cat ~/.ssh/id_ed25519.pub

# Prompt the user to add the key to GitHub
echo "Please add the above public SSH key to your GitHub account by following these steps:"
echo "1. Go to https://github.com/settings/keys"
echo "2. Click the 'New SSH key' button."
echo "3. Enter a title for the key and paste the copied public key into the 'Key' field."
echo "4. Click the 'Add SSH key' button to save the key."

# Install PostgreSQL
sudo apt-get install -y postgresql postgresql-contrib

# Start the PostgreSQL service
sudo systemctl start postgresql

# Enable PostgreSQL to start on boot
sudo systemctl enable postgresql

# Print completion message
echo "Installation and setup completed successfully!"