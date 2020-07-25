#!/bin/bash
apt-get update &&apt-get upgrade -y

#Docker installation 
sudo apt-get remove docker docker-engine docker.io containerd runc -y

sudo apt-get update

sudo apt-get install apt-transport-https ca-certificates  curl gnupg-agent software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo "/n/n********Docker installation Completed********/n/n"

docker version

echo "/n/n********Docker-Compose installation********/n/n"

sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

#Increase max_map_count on your Docker host:

sysctl -w vm.max_map_count=262144



