#!/bin/bash

echo "*********************"
echo "Emptying the trash"
echo "*********************"

sudo apt autoremove
sudo trash-empty

echo "*********************"
echo "System cleaned"
echo "*********************"
