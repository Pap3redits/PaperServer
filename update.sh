#!/bin/bash


echo "**********************"
echo "Updating apt packages"
echo "**********************"

sudo apt update
sudo apt upgrade -y

echo "**********************"
echo "Updating flatpaks "
echo "**********************"
update flatpak -y

echo "**********************"
echo "Updating snaps"
echo "**********************"

sudo snap refresh

echo "**********************"
echo "Update Completed!"
echo "**********************"

