#!/bin/bash

# update all package,key and system
eos-update

# CONF

# activate system snapshot
yay -S snapper-support btrfs-assistant

# activate bluetooth
sudo systemctl start bluetooth
sudo systemctl enable bluetooth

# work with github
git config --global user.name "Micael Jerry"
git config --global user.email hei.jerry.2@gmail.com
ssh-keygen -t ed25519 -C hei.jerry.2@gmail.com 		# generate ssh key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

sudo pacman -Rns xterm

# ENV DEVELOPPEMENT

# node js environnement
yay -S nodejs
yay -S npm

# java environnement
sudo pacman -S jre17-openjdk
sudo pacman -S jdk17-openjdk
yay -S maven
# ajouter config javahome

# install and configure postgresql
yay -S postgresql
sudo -iu postgres
initdb -D /var/lib/postgres/data
exit

sudo systemctl start postgresql.service
sudo systemctl enable postgresql.service

# install and configure docker
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

# install and configure mongodb
yay -S mongodb-bin

sudo systemctl start mongodb.service
sudo systemctl enable mongodb.service

# cloud environnement
sudo pacman -S aws-cli
sudo pacman -S python-rich
yay -S aws-sam-cli-bin

yay -S xdman
yay -S visual-studio-code-bin
yay -S postman-bin
yay -S mongodb-compass
yay -S intellij-idea-community-edition
