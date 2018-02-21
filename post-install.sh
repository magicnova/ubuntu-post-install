#!/bin/bash

#repositories
sudo add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"
sudo add-apt-repository -y "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"

#for vscode
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF

#for chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'


sudo apt-get update 

#misc
sudo apt-get -y install vlc
sudo apt-get -y install google-chrome-stable
sudo apt -y install curl

#nodejs & npm
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm

#use nodejs and npm to update themselves
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

#dev
sudo apt -y install code
sudo apt-get -y install git
sudo apt-get -y install git-gui


#slack
mkdir temp
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.0.5-amd64.deb -O temp/slack.deb
sudo dpkg -i temp/slack.deb
rm -d -r temp




#top programming fonts
curl -L https://github.com/hbin/top-programming-fonts/raw/master/install.sh | bash










