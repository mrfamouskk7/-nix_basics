sudo apt update
sudo apt install tomcat9 tomcat9-admin
sudo systemctl enable tomcat9
sudo ufw allow from any to any port 8080 proto tcp
