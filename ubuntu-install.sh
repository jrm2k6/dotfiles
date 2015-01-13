#!/bin/bash

sh -c "echo 'deb http://archive.canonical.com/ubuntu/ trusty partner' >> /etc/apt/sources.list.d/canonical_partner.list"
apt-get update

apt-get install python-dev libxml2-dev libxslt-dev vlc
#text editors
apt-get install tilda
cd Downloads/
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.tar.bz2
tar -xvjf Sublime\ Text\ 2.0.2.tar.bz2
mv Sublime\ Text\ 2 /opt/
ln -s /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime
ln -s /usr/bin/sublime /usr/bin/subl

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

#jdk
apt-get install python-software-properties
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java7-installer

#node
apt-get install nodejs
apt-get install npm
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g mocha
npm install -g less

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

#memcache
apt-get install memcached

cd ~
mkdir Workspace && cd Workspace
git clone git@github.com:jrm2k6/dotfiles.git
cp dotfiles/bashrc ~/.bashrc
cp dotfiles/bash_profile ~/.bash_profile

#clock issue
killall unity-panel-service
