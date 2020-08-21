#!/bin/bash

echo "RUN SCRIPT AS SUDO. PRESS ^C NOW IF YOU ARE NOT RUNNING SCRIPT AS SUDO."

sleep 5

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
