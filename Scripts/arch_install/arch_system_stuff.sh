#!/bin/bash

# This script installs drivers and other system basics
# Run this first

DONE="Done."


#Audio drivers
echo "Installing audio drivers..."
pacman -S alsa-utils
pacman -S alsa-plugins
pacman -S pulseaudio
pacman -S pulseaudio-alsa
echo $DONE

#Intel graphics driver
echo "Installing intel graphics..."
pacman -S mesa
pacman -S lib32-mesa
pacman -S xf86-video-intel
pacman -S mesa-demos
echo $DONE

#Xorg
echo "Installing xorg..."
pacman -S xorg-server
pacman -S xorg
echo $DONE


#Nvidia stuff
echo "Installing Nvidia drivers and bumblebee..."
pacman -S nvidia
pacman -S lib32-nvidia-utils
pacman -S nvidia-settings
pacman -S lib32-virtualgl
pacman -S bumblebee
pacman -S bbswitch
pacman -S primus
pacman -S lib32-primus
echo $DONE

#Power management
echo "Installing power management tools..."
pacman -S thermald
pacman -S i7z
pacman -S cpupower
echo $DONE

#Intel Microcode
echo "Installing intel microcode..."
pacman -S intel-ucode
grub-mkconfig -o /boot/grub/grub.cfg
echo $DONE

#Networking
echo "Installing networking accessories..."
pacman -S samba
echo $DONE


