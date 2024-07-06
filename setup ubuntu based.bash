#!/bin/bash

# work with github
git config --global user.name "Micael Jerry"
git config --global user.email hei.jerry.2@gmail.com
ssh-keygen -t ed25519 -C hei.jerry.2@gmail.com 		# generate ssh key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# ENV DEVELOPPEMENT

# node js environnement
## install nvm
# https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating
## install nodejs
nvm install --lts
nvm use --lts

# java environnement
sudo apt install openjdk-21-jdk
sudo apt install openjdk-21-jre
sudo apt install maven
# ajouter config javahome

# install and configure postgresql
sudo apt install postgresql

sudo systemctl start postgresql
sudo systemctl enable postgresql

sudo -iu postgres
# https://openbasesystems.com/2023/06/20/postgresql-error-fatal-role-username-does-not-exist/

# install and configure docker
# https://docs.docker.com/engine/install/ubuntu/
sudo usermod -aG docker $USER

sudo snap install code --classic
sudo snap install postman
sudo snap install intellij-idea-community --classic
sudo snap install pycharm-community --classic

# install and configure mongodb
yay -S mongodb-bin

sudo systemctl start mongodb.service
sudo systemctl enable mongodb.service

# cloud environnement
sudo pacman -S aws-cli
sudo pacman -S python-rich
yay -S aws-sam-cli-bin

yay -S xdman
yay -S mongodb-compass

# install and config ruby APT or https://www.theodinproject.com/lessons/ruby-installing-ruby
sudo apt install ruby-full
sudo gem install solargraph
sudo gem install pry-byebug