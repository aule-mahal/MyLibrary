Personal utility scripts for an Arch Linux install.
May not work on all systems, *ESPECIALLY* the nvidia related ones.
Use these at your own risk.

# Set /bin to PATH
if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"	
fi

