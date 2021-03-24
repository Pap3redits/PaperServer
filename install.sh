#!/bin/bash

#list of apps to install
Apt_List="trash-cli neofetch vim snapd discord steam net-tools piper htop gnome-tweaks vlc "
Snap_List="spotify"


#update system
sudo apt update
sudo apt upgrade -y

#create bin folder
sudo mkdir ~/bin

#create update script
sudo touch ~/bin/update
sudo echo '#!/bin/bash' >> ~/bin/update
sudo echo 'sudo apt update' >> ~/bin/update
sudo echo 'sudo apt upgrade -y' >> ~/bin/update
sudo chmod 755 ~/bin/update

#create sysclean script
sudo touch ~/bin/sysclean
sudo echo '#!/bin/bash' >> ~/bin/sysclean
sudo echo 'sudo apt autoremove' >> ~/bin/sysclean
sudo echo 'trash-empty' >> ~/bin/sysclean
sudo echo 'trash has been cleaned' >> ~/bin/sysclean
sudo chmod 755 ~/bin/sysclean




sudo apt install -y $Apt_List
sudo snap install  $Snap_List

