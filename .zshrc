# Path to your oh-my-zsh installation.
export ZSH="/home/keeler/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh


#####################################
# Settings & environment variables
#####################################

# Swap caps & esc keys
setxkbmap -option caps:swapescape

# Allow zsh to share command history between tmux panes
setopt inc_append_history

# Personal scripts
export PATH="$HOME/bin":$PATH

EDITOR=vim


#####################################
# Aliases
#####################################

alias freecad=~/bin/FreeCAD_weekly-builds-25025-Linux-Conda_glibc2.12-x86_64.AppImage
alias say="spd-say"
alias tree="tree -I '.git|node_modules|*.egg-info|__pycache__'"


#####################################
# Functions
#####################################

# Colorize manpages. Nice!
# https://blog.yossarian.net/2018/01/22/Reading-Manpages-Like-a-Pro
man() {
    env \
    LESS_TERMCAP_mb="$(printf "\e[1;31m")" \
    LESS_TERMCAP_md="$(printf "\e[1;31m")" \
    LESS_TERMCAP_me="$(printf "\e[0m")" \
    LESS_TERMCAP_se="$(printf "\e[0m")" \
    LESS_TERMCAP_so="$(printf "\e[1;44;33m")" \
    LESS_TERMCAP_ue="$(printf "\e[0m")" \
    LESS_TERMCAP_us="$(printf "\e[1;32m")" \
    man "${@}"
}

urlencode() {
  echo -n "$1" | curl -Gso /dev/null -w %{url_effective} --data-urlencode @- "" | cut -c 3-
}


#####################################
# Fun
#####################################
RANDOM_COW=$(cowsay -l | tail -n+2 | tr ' ' '\n' | sort -R | head -n1)
fortune | cowsay -f $RANDOM_COW | lolcat


#####################################
# MUST BE LAST
#####################################
# Start tmux automatically
if [ "$TMUX" = "" ]; then tmux; fi
