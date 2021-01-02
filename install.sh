#!/bin/bash

sudo apt-get update
sudo apt-get upgrade



echo -e "\n--- LGSM pre-requisites ---\n"
sudo apt-get update
sudo apt-get install mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux lib32gcc1 libstdc++6 libstdc++6:i386

echo -e "\n--- Install CS:GO server ---\n"
cd /home/vagrant
wget -O linuxgsm.sh https://linuxgsm.sh
chmod +x linuxgsm.sh
/home/vagrant/linuxgsm.sh csgoserver



sudo chown vagrant:vagrant -R /home/vagrant/serverfiles
/home/vagrant/csgoserver auto-install
adduser pvrserver
su - pvrserver
wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh pvrserver
./pvrserver install
