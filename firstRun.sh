#!/bin/bash
# Bash Script with selection

PS3='Choose distro'
menu=("Ubuntu" "Arch" "Exit")
select option in "${menu[@]}"
do
    case $option in
        "Ubuntu")
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
            ;;
        "Arch")
            #!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "Please run as sudo."
  exit 1
fi

sudo pacman -S python-pip

sudo chmod +x dual-cli

mkdir ~/.dcli

cp dual-cli ~/.dcli/dual-cli

echo "" >> ~/.bashrc

echo "# The following line creates an alias for dual-cli to run." >> ~/.bashrc

echo "alias dual-cli='python3 .dcli/dual-cli'" >> ~/.bashrc

echo "Script finished. Please open a new terminal session and run command 'dual-cli'."

sleep 3

exit

            ;;
        "Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
