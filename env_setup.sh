#!/bin/bash

# packages needing installed

# update
sudo apt-get update
# vs Code download vs code package and add to apt repo
printf "\n======== Downloading and installing VScode ========"
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

# pip
printf "\n==== Installing Pip ===="
sudo apt install python3-pip
pip --version

# git
printf "\n==== Installing Git from apt ===="
sudo apt-get install git
git --version

# node
sudo apt-get install nodejs
node --version

# telegram
printf "\n\n======== Downloading tar from telegram cdn ========\n\n"
# mkdir for the download & wget telgram 64bit linux
mkdir ~/Downloads/telegram 
wget https://telegram.org/dl/desktop/linux -P ~/Downloads/telegram

printf "\n======== Unpacking telegram tar ========\n"
# unzip
tar -xJvf ~/Downloads/telegram/linux

printf "\n======== Moving telegram to /opt/telegram ========\n"
# move telegram exe to opt/telegram *best practice
sudo mv Telegram /opt/telegram

#check opt/telegram files
find /opt/telegram

# force creation of system link
sudo ln -sf /opt/telegram/Telegram /usr/bin/telegram

# cleanup the download
rm -rf ~/Downloads/telegram

# docker
printf "\n======== Installing Docker and docker dependicies ========"
# install docker dependicies
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
# add docker offical GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#check to make sure docker key is correct
sudo apt-key fingerprint 0EBFCD88
# setup stable repo
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
# Install Docker Engine
sudo apt-get install docker-ce docker-ce-cli containerd.io

# aws cli
printf "\n ======== Installing AWS CLI ========"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

# nmap
printf "============ Installing Nmap ==========="
sudo apt-get install nmap
nmap --version

# chrome
printf "==== Installing chrome ===="
mkdir ~/Downloads/chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads/chrome
sudo apt install ~/Downloads/chrome/google-chrome-stable_current_amd64.deb
sudo rm -rf ~/Downloads/chrome

# ansible
printf "==== Installing Ansible via Pip ===="
pip install ansible



