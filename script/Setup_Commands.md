sudo nano /home/pi/.config/lxsession/LXDE-pi/autostart

@xset s off
@xset -dmps
@xset s noblank
@chromium-browser --kiosk --incognito http://localhost

Install Unclutter to remove the mouse cursor from the screen.
sudo apt-get install unclutter

Apache server
sudo apt-get install apache2 -y

Open this dir
/var/www/html
 and paste the file
