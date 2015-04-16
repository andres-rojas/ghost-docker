#!/usr/bin/env bash

ghost=$(sudo docker-compose ps | grep ghost | awk '{print $1; exit}')
data_volume="$(pwd)/backup"

sudo docker run --volumes-from $ghost -v $data_volume:/backup --rm breakyboy/ghost-backup
