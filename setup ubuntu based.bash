#!/bin/bash

# Google Chrome
## install
## https://doc.ubuntu-fr.org/google_chrome
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -O- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo tee /etc/apt/trusted.gpg.d/linux_signing_key.pub
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 78BD65473CB3BD13
sudo apt update
## if Warning
sudo apt-key export D38B4796 | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/chrome.gpg
## install
sudo apt-get install google-chrome-stable


# Git
## install
sudo apt install git
## config
git config --global user.name "Micael Jerry"
git config --global user.email hei.jerry.2@gmail.com
ssh-keygen -t ed25519 -C hei.jerry.2@gmail.com 		# generate ssh key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


# Oh My zsh
sudo apt install zsh
## https://ohmyz.sh/#install
## ohmzsh syntax hoghlighting: https://linuxhint.com/enable-syntax-highlighting-zsh/
## ohmzsh auto-suggestions: https://linuxhint.com/use-zsh-auto-suggestions/


# Node JS
## install nvm
## https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
## install nodejs & npm & yarn
nvm install --lts
nvm use --lts
npm i -g yarn


# Java
## install
sudo apt install openjdk-21-jdk
sudo apt install openjdk-21-jre
sudo apt install maven
## config JAVA_HOME
## in .bashrc
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin


# MongoDB
## Install
## https://linuxgenie.net/install-mongodb-ubuntu-24-04/
sudo apt install gnupg curl
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo apt update
sudo apt install mongodb-org
sudo systemctl start mongod.service
sudo systemctl enable mongod.service

# MongoDB Compass
## Download: https://www.mongodb.com/try/download/compass
## install
sudo apt install ./file.deb


# VS Code
## https://code.visualstudio.com/docs/setup/linux
## Download
## Install
sudo apt install ./file.deb


# Install other app
sudo snap install postman
sudo snap install intellij-idea-community --classic
sudo snap install pycharm-community --classic


>>>

# PostgreSQL
## https://linuxgenie.net/how-to-install-and-set-up-postgresql-on-ubuntu-22-04/
sudo apt install postgresql

sudo systemctl start postgresql
sudo systemctl enable postgresql

sudo -iu postgres
# https://openbasesystems.com/2023/06/20/postgresql-error-fatal-role-username-does-not-exist/

# install and configure docker
# https://docs.docker.com/engine/install/ubuntu/
sudo usermod -aG docker $USER


# Cloud environnement
sudo pacman -S aws-cli
sudo pacman -S python-rich
yay -S aws-sam-cli-bin

yay -S xdman
yay -S mongodb-compass

# Ruby environnement
## https://www.theodinproject.com/lessons/ruby-installing-ruby
sudo apt install ruby-full
sudo gem install solargraph
sudo gem install pry-byebug
