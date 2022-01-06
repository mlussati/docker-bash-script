#!/bin/bash

echo "Removendo o docker"
# Removendo dependencias do docker passadas
sudo yum remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-engine
# Comecando a instalar o docker
echo "Setando o repositorio do docker"
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Instalando o docker
echo "Instalando Docker engine"
sudo yum install docker-ce docker-ce-cli containerd.io

# Startadando o deamon do docker
echo "Iniciando start deamon do docker"
sudo systemctl start docker

echo "Running container hello work"
sudo docker run hello-world
