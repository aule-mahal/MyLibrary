#!/bin/bash

# This script installs GNOME and GNOME-related apps
# DOES NOT INCLUDE STUFF FROM THE AUR those will be added manually later

DONE="Done."

echo "Installing GNOME Desktop Enviroment"
pacman -S gnome
pacman -S gedit
pacman -S dconf-editor
pacman -S gnome-tweak-tool
pacman -S guake
pacman -S file-roller
pacman -S gnome-characters
pacman -S gnome-nettool
pacman -S gnome-todo
pacman -S seahorse