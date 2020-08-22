#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "Please run as sudo."
  exit 1
fi

sudo apt install python3-pip -y

sudo chmod +x dual-cli

mkdir ~/.dcli

cp dual-cli ~/.dcli/dual-cli

echo "" >> ~/.bashrc

echo "# The following line creates an alias for dual-cli to run." >> ~/.bashrc

echo "alias dual-cli='python3 .dcli/dual-cli'" >> ~/.bashrc

echo "Script finished. Please open a new terminal session and run command 'dual-cli'."

sleep 3

exit
