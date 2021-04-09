#!/bin/bash

#list of apps to install
Apt_List="trash-cli neofetch vim snapd discord steam net-tools piper htop gnome-tweaks vlc mlocate flatpak"
Snap_List="spotify"


#update system
sudo apt update
sudo apt upgrade -y

#create bin folder
sudo mkdir ~/bin

#copy update script to ~/bin folder
cp update.sh ~/bin/.
sudo chmod 755 ~/bin/update

#copy sysclean script to ~/bin folder
cp sysclean.sh ~/bin/.
sudo chmod 755 ~/bin/sysclean

#install listed programs
sudo apt install -y $Apt_List
sudo snap install  $Snap_List

#install MangoHud
sudo git clone --recurse-submodules https://github.com/flightlessmango/MangoHud.git ~/MangoHud
sudo ~/MangoHud/build.sh build
sudo ~/MangoHud/build.sh package
sudo ~/MangoHud/build.sh install
