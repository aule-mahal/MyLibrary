#!/bin/bash

# This script installs my preferred suit of applications
# DOES NOT INCLUDE STUFF FROM THE AUR those will be added manually later
# To be used AFTER a DE has been installed

#Add new servers to pacman.conf
#Sublime Text
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/dev/x86_64" | sudo tee -a /etc/pacman.conf
pacman -Syu

#Accessories
pacman --noconfirm -S vim
#pacman --noconfirm -S terminator
pacman --noconfirm -S tmux
pacman --noconfirm -S htop
pacman --noconfirm -S pluma
pacman --noconfirm -S engrampa
pacman --noconfirm -S wine
pacman --noconfirm -S winetricks
pacman --noconfirm -S gufw
pacman --noconfirm -S meld
pacman --noconfirm -S qemu
pacman --noconfirm -S gparted

#java
pacman --noconfirm -S jdk8-openjdk
pacman --noconfirm -S java-openjfx
pacman --noconfirm -S icedtea-web

#Office
pacman --noconfirm -S libreoffice-fresh
pacman --noconfirm -S calibre
pacman --noconfirm -S atril
pacman --noconfirm -S texmaker

#Internet
pacman --noconfirm -S firefox
pacman --noconfirm -S chromium
pacman --noconfirm -S deluge

#Graphics
pacman --noconfirm -S gimp
pacman --noconfirm -S inkscape
pacman --noconfirm -S gpick

#Development
pacman --noconfirm -S netbeans
pacman --noconfirm -S sublime-text
pacman --noconfirm -S bpython
pacman --noconfirm -S bpython2

#media
pacman --noconfirm -S audacious
pacman --noconfirm -S audacity
pacman --noconfirm -S vlc
pacman --noconfirm -S cheese

#QT styling stuff
pacman --noconfirm -S qt5ct
pacman --noconfirm -S qt-styleplugins

#Gaming
pacman --noconfirm -S playonlinux
pacman --noconfirm -S steam
