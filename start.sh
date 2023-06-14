#! /bin/sh
sudo cp node_exporter /usr/bin/
sudo cp node_exporter.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start node_exporter.service
sudo systemctl enable node_exporter.service
docker network create --scope local metrics_net
docker compose up -d