sudo mkdir -p /content/webapp
cd /content/webapp
sudo apt install nginx
sudo ufw allow "Nginx HTTP"
sudo ufw status
systemctl status nginx
wget -4 icanhazip.com
