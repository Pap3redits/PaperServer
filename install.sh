#!/bin/bash

#list of apps to install
Apt_List="trash-cli neofetch vim snapd discord steam net-tools piper htop gnome-tweaks"
Snap_List="spotify"


#update system
sudo apt update
sudo apt upgrade -y

#create bin folder
#sudo mkdir ~/bin

#create update script
touch ~/bin/update
echo '#!/bin/bash' >> ~/bin/update
echo 'sudo apt update' >> ~/bin/update
echo 'sudo apt upgrade -y' >> ~/bin/update
sudo chmod 755 ~/bin/update

#create sysclean script
touch ~/bin/sysclean
echo '#!/bin/bash' >> ~/bin/sysclean
echo 'sudo apt autoremove' >> ~/bin/sysclean
echo 'trash-empty' >> ~/bin/sysclean
echo 'trash has been cleaned'
sudo chmod 755 ~/bin/sysclean




sudo apt install -y $Apt_List
sudo snap install  $Snap_List

