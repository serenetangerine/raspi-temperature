#!/bin/bash
# Installs Grafana on Raspi 0 or 1

sudo apt install libfontconfig1 -y

wget https://dl.grafana.com/oss/release/grafana-rpi_6.6.1_armhf.deb
sudo dpkg -i grafana-rpi_6.6.1_armhf.deb

sudo systemctl enable grafana-server
sudo systemctl start grafana-server

IP=(hostname -I)

echo "Grafana can be visited at http://$IP:3000"
echo "The default credentials are admin admin"
