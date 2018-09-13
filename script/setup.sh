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
sudo apt-get dist-upgrade
echo "Done"


#Apache
echo "Downloading prerequisites"

sudo apt-get install -y apache2
sudo echo "ServerName localhost" >> /etc/apache2/httpd.conf
echo "Apache2 Done"


#PHP
sudo apt-get install -y php5 libapache2-mod-php5 php5-intl php5-mcrypt php5-curl php5-gd php5-sqlite
echo "Php Done"

#MySQL
sudo apt-get install -y mysql-server mysql-client php5-mysql
echo "MySql Done"


#Unclutter
sudo apt-get install unclutter
echo "unclutter Done"


echo "Installation done"


echo "Server running at http://localhost"

echo "Settings take effect on next boot."
echo "Reboot started..."
reboot
exit 0

