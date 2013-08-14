#!/bin/bash

apt-get update

# installing vim
apt-get install -y vim g++ curl make

# creating a .vimrc, start with line numbers
echo set number > .vimrc

# create a place for vim syntax highlighting files to be stored
mkdir /home/vagrant/.vim/

mkdir /home/vagrant/.vim/syntax

# install JavaScript highlighting for vim
# copy the configuration to the correct location
cp /vagrant/javascript.vim /home/vagrant/.vim/syntax/

# copy server.js to ~
cp /vagrant/server.js /home/vagrant/

# put node instructions into the ssh banner
rm /etc/motd.tail
cat /vagrant/node-start.txt > /etc/motd.tail

# installing more node dependencies
sudo apt-get install -y python-software-properties python g++ curl make

# adding the ppa where the node.js repo is located
sudo add-apt-repository ppa:chris-lea/node.js

# updateing the aptitude cache
sudo apt-get update

# installing nodejs
sudo apt-get install -y nodejs

clear
echo -e '\0033\0143'

echo '=== VIM VERSION ==='
vim --version | head -n 1
echo '=== NODE.js VERSION ==='
node --version
echo '=== NPM VERSION ==='
npm --version
echo '+++++++++++++++++++'
echo 'enter your node-box by typing'
echo 'vagrant ssh'
echo '+++++++++++++++++++'

exit 0
