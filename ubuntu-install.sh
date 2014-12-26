#!/bin/bash

sh -c "echo 'deb http://archive.canonical.com/ubuntu/ trusty partner' >> /etc/apt/sources.list.d/canonical_partner.list"
apt-get update

#text editors
apt-get install tilda
cd Downloads/
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.tar.bz2
tar -xvjf Sublime\ Text\ 2.0.2.tar.bz2
sudo mv Sublime\ Text\ 2 /opt/
sudo ln -s /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime

#skype
apt-get install skype

#irssi
apt-get install irssi

#python
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py

pip install virtualenv

#haskell
apt-get install ghc
apt-get install haskell-platform

#database
apt-get install sqlite3

#node
apt-get install nodejs
apt-get install npm
ln -s /usr/bin/nodejs /usr/bin/node

#virtualbox
apt-get install virtualbox

#heroku
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#git-gui
apt-get install gitg

#github settings 
ssh-keygen -t rsa -C "jeremy.dagorn@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa


