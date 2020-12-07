#!/bin/bash

# This file should be run in sudo

# In case if old docker versions installed we remove them
apt-get remove docker docker-engine docker.io containerd runc

# Update & upgrade
apt update && apt upgrade -y

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add Docker’s official GPG (Gnu Privacy Guard) key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you now have the key with the fingerprint
apt-key fingerprint 0EBFCD88

# Add stable repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt update

# Installing docker community editin
apt install docker-ce docker-ce-cli containerd.io
