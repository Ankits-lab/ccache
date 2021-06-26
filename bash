#!/bin/bash
# Lets see machine specifications and environments
df -h
free -h
cat /etc/os*
env

#url=https://www.keneankit990.workers.dev/ccache/ci2/ccache.tar.gz # Where cccahe is located, use your ones, from where you want to download ccache!
## my creativity 
 apt-get update \
 && apt-get install -y sudo wget
 adduser --disabled-password --gecos '' docker
 adduser docker sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
curl https://rclone.org/install.sh | sudo bash
sudo apt-get update -y
sudo apt-get install -y aria2
sudo apt-get install -y tar wget
##BELOW IS ORIGINAL
cd /tmp # Where to download cccahe
wget https://sourceforge.net/projects/aktesting/files/ccache/ccache.tar.gz/download ccache.tar.gz
time tar xf ccache.tar.gz  # Extract ccache so ci can use it
ls
#rm -rf ccache.tar.gz # Remove unnecessary downloaded file, it will speed up the upload ccache process
