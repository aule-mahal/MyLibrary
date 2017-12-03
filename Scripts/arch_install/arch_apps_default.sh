#!/bin/bash

# This script installs my preferred suit of applications
# DOES NOT INCLUDE STUFF FROM THE AUR those will be added manually later
# To be used AFTER a DE has been installed
# Run this thirdly

DONE="Done."

echo "Installing favored applications."

#Add new servers to pacman.conf
#Sublime Text
echo "Adding sublimetext servers..."
pacman --noconfirm -S curl
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/dev/x86_64" | sudo tee -a /etc/pacman.conf
pacman -Syu
echo $DONE

#Accessories
echo "Installing accessory applications..."
pacman --noconfirm -S vim
pacman --noconfirm -S htop
pacman --noconfirm -S wine
pacman --noconfirm -S winetricks
pacman --noconfirm -S gufw
pacman --noconfirm -S meld
pacman --noconfirm -S qemu
pacman --noconfirm -S gparted
pacman --noconfirm -S virtualbox
pacman --noconfirm -S virtualbox-host-dkms
pacman --noconfirm -S nmap
echo $DONE

#java
echo "Installing openjdk..."
pacman --noconfirm -S jdk8-openjdk
pacman --noconfirm -S java-openjfx
pacman --noconfirm -S icedtea-web
echo $DONE

#Office
echo "Installing office applications..."
pacman --noconfirm -S libreoffice-fresh
pacman --noconfirm -S calibre
pacman --noconfirm -S texmaker
echo $DONE

#Internet
echo "Installing internet applications..."
pacman --noconfirm -S firefox
pacman --noconfirm -S chromium
pacman --noconfirm -S deluge
echo $DONE

#Graphics
echo "Installing graphics applications..."
pacman --noconfirm -S gimp
pacman --noconfirm -S inkscape
pacman --noconfirm -S gpick
echo $DONE

#Development
echo "Installing development applications..."
pacman --noconfirm -S python2
pacman --noconfirm -S eclipse-java
pacman --noconfirm -S sublime-text
pacman --noconfirm -S bpython
pacman --noconfirm -S bpython2
pacman --noconfirm -S arduino
pacman --noconfirm -S arduino-avr-core
pacman --noconfirm -S arduino-docs
echo $DONE


#media
echo "Installing media applications..."
pacman --noconfirm -S audacious
pacman --noconfirm -S audacity
pacman --noconfirm -S vlc
pacman --noconfirm -S cheese
echo $DONE

#QT styling stuff
echo "Installing qt styling applications..."
pacman --noconfirm -S qt5ct
pacman --noconfirm -S qt-styleplugins
echo $DONE

#Gaming
echo "Installing gaming & games..."
pacman --noconfirm -S playonlinux
pacman --noconfirm -S steam
pacman --noconfirm -S dwarffortress
echo $DONE