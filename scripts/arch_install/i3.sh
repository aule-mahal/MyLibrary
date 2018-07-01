# Install and configure i3wm

# Install main programs
pacman -S i3
pacman -S dmenu
pacman -S termite

# Install support apps
pacman -S feh

# Install fonts
pacman -S ttf-liberation noto-sans terminus-font ttf-dejavu ttf-hack ttf-inconsolata

# Auto-copy dotfiles
if [$1 == "--no-config"]
then
	exit
fi
# Config X keyboard layout
localectl set-x11-keymap br abnt2
#TODO configs


#TODO
# betterlock?
# theming?
# lightdm?
