#!/bin/bash

echo "RUN SCRIPT AS SUDO. PRESS ^C NOW IF YOU ARE NOT RUNNING SCRIPT AS SUDO."

sleep 5

sudo apt install python3-pip -y

sudo chmod +x dual-cli

export PATH=$PATH:dual-cli

echo "Script finished."

sleep 2

python3 dual-cli
