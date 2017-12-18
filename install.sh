#!/bin/bash

# update apt-get
sudo apt-get update

# remove previously installed Docker
sudo apt-get remove docker docker-engine docker.io* lxc-docker*

# install dependencies 4 cert
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y

# add Docker repo gpg key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -


# add docker repo
sudo sh -c "echo 'deb [arch=amd64] https://download.docker.com/linux/debian stretch stable' >> /etc/apt/sources.list"

sudo apt-get update

# install Docker
sudo apt-get install docker-ce -y

# run Hellow World image
sudo docker run hello-world

# manage Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER

echo '==============================================='
echo 'You may need relogin to apply user group change.'
echo '==============================================='

# configure Docker to start on boot
sudo systemctl enable docker
