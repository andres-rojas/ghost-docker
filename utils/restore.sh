#!/usr/bin/env bash

ghost=$(sudo docker-compose ps | grep ghost | awk '{print $1}')
data_volume="$(pwd)/backup"

echo "Stopping blog..."
sudo docker-compose stop
echo

sudo docker run --volumes-from $ghost -v $data_volume:/backup --rm breakyboy/ghost-restore
echo

echo "Starting blog..."
sudo docker-compose start
