#!/bin/bash

# This script installs my preferred suit of applications
# DOES NOT INCLUDE STUFF FROM THE AUR those will be added manually later
# To be used AFTER a DE has been installed

DONE="Done."

#Install XFCE
echo "Installing Desktop Enviroment..."
pacman --noconfirm -S lightdm
pacman --noconfirm -S lightdm-gtk-greeter
pacman --noconfirm -S lightdm-gtk-greeter-settings
pacman --noconfirm -S xfce4
pacman --noconfirm -S xfce4-goodies
pacman --noconfirm -S compton
systemctl enable lightdm.service
echo $DONE

#Add new servers to pacman.conf
#Sublime Text
echo "Adding Sublime Text servers..."
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
pacman -Syu
echo $DONE

#Accessories
echo "Installing accessories..."
pacman --noconfirm -S vim
#pacman --noconfirm -S terminator
pacman --noconfirm -S tmux
pacman --noconfirm -S htop
#pacman --noconfirm -S pluma
#pacman --noconfirm -S engrampa
pacman --noconfirm -S wine
pacman --noconfirm -S winetricks
pacman --noconfirm -S gufw
pacman --noconfirm -S meld
pacman --noconfirm -S qemu
pacman --noconfirm -S gparted
pacman --noconfirm -S xapps
echo $DONE

#java
echo "Installing OpenJDK..."
pacman --noconfirm -S jdk8-openjdk
pacman --noconfirm -S java-openjfx
pacman --noconfirm -S icedtea-web
echo $DONE

#Office
echo "Installing office apps..."
pacman --noconfirm -S libreoffice-fresh
pacman --noconfirm -S calibre
#pacman --noconfirm -S atril
pacman --noconfirm -S texmaker
echo $DONE

#Internet
echo "Installing internet apps..."
#pacman --noconfirm -S firefox
pacman --noconfirm -S chromium
pacman --noconfirm -S deluge
echo $DONE

#Graphics
echo "Installing graphics apps..."
pacman --noconfirm -S gimp
pacman --noconfirm -S inkscape
pacman --noconfirm -S gpick
echo $DONE

#Development
echo "Installing development apps..."
pacman --noconfirm -S netbeans
pacman --noconfirm -S sublime-text
pacman --noconfirm -S bpython
pacman --noconfirm -S bpython2
pacman --noconfirm -S arduino-avr-core
pacman --noconfirm -S arduino-docs
pacman --noconfirm -S arduino
echo $DONE

#media
echo "Installing media apps..."
pacman --noconfirm -S audacious
pacman --noconfirm -S audacity
pacman --noconfirm -S vlc
pacman --noconfirm -S cheese
echo $DONE

#QT styling stuff
echo "Installing QT Styling apps..."
pacman --noconfirm -S qt5ct
pacman --noconfirm -S qt-styleplugins
echo $DONE

#Gaming
echo "Installing gaming apps..."
pacman --noconfirm -S playonlinux
pacman --noconfirm -S steam
echo $DONE
