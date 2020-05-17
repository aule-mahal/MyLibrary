#
# ~/.bashrc
#
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi

# For Dark
#export PS1="\[$(tput bold)\]\[\033[38;5;78m\]\u@\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;44m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;44m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"



#export PS1="\[\033[38;5;2m\]\u@\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;6m\]$\[$(tput sgr0)\] \[$(tput sgr0)\]"


#export PS1="\[\033[38;5;23m\]\u@\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;63m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;63m\]$\[$(tput sgr0)\] \[$(tput sgr0)\]"

# For light
export PS1="\[$(tput bold)\]\[\033[38;5;106m\]\u@\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;37m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;37m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# enable powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh

BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/nano
