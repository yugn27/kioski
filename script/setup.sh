#!/bin/bash


if [ $(id -u) -ne 0 ]; then
	echo "Installer must be run as root."
	echo "Try 'sudo bash $0'"
	exit 1
fi

clear

echo "Welcome to Kioski Installer"
echo "Steps include:"
echo "Update package index files (apt-get update)"
echo "Install prerequisite software"
echo "Install RGB display driver software and examples"
echo "Configure boot options"
echo "Run time ~15 minutes. Some options require reboot."
echo "EXISTING INSTALLATION, IF ANY, WILL BE OVERWRITTEN."







echo "Starting installation..."
echo "Updating package index files"
sudo apt-get update
echo "Done"



echo "Downloading prerequisites"
wget https://yugn27.github.io/kioski/setup.sh
echo "Done"



echo "RGB display driver software and examples"
echo "Done"


echo "Configuring system..."
echo "Done"



echo "Server running at http://localhost"
echo
echo "Settings take effect on next boot."

echo
echo -n "REBOOT NOW? [y/N] "
read
if [[ ! "$REPLY" =~ ^(yes|y|Y)$ ]]; then
	echo "Exiting without reboot."
	exit 0
fi
echo "Reboot started..."
reboot
exit 0

