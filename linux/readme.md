This script performs the following actions:

Updates the package lists.
1. Installs curl (needed for Node.js installation).
2. Installs Node.js using the official NodeSource setup script.
3. Installs PM2 globally using npm.
5. Installs Git.
6. Generates an SSH key pair and prompts the user to add the public key to their GitHub account.
7. Installs PostgreSQL and its contrib package.
8. Starts the PostgreSQL service and enables it to start on boot.

To use the script:

1. Save the script to a file (e.g., setup_server.sh) on your Linux server.
2. Make the script executable using the chmod command:

```
chmod +x setup_server.sh
```

3. Run the script:
```
./setup_server.sh
```
4. Follow the instructions provided by the script to add the public key to your GitHub account.


Please note that this script uses sudo for commands that require root privileges. You may be prompted for your password during the installation process. Additionally, the script does not automatically add the public key to your GitHub account, so you will need to manually add the key by following the instructions provided by the script.