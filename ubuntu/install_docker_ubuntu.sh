#!/bin/bash

echo "Desinstalar versoes antigas"
# Removendo dependencias do docker passadas
sudo apt-get remove docker docker-engine docker.io containerd runc

# Comecando a instalar o docker e instale usando o repositório
echo "Setando o repositorio do docker"
sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Adicione a chave GPG oficial do Docker

echo "Adicionando a chave GPG do Docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg


echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Instalando o docker
echo "Instalando Docker engine"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io


echo "Running container hello work"
sudo docker run hello-world
