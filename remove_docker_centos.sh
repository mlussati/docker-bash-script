#!/bin/bash

echo "Comecando a remover o docker"

sudo yum remove docker-ce docker-ce-cli containerd.io

sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd