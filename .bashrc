# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
        . /etc/bash.bashrc
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# Custom function
if [ -f /home/${USER}/.bash/functions ]; then
     . /home/${USER}/.bash/functions
fi

# Custom function
if [ -f /home/${USER}/.bash/aliases ]; then
     . /home/${USER}/.bash/aliases
fi      	

if [ $TERM = 'linux' -a $SHELL = '/bin/bash' ] ; then
    PS1='\033[?17;0;40c[\u@\h \W]\$ '
else PS1='[\u@\h \W]\$ '
fi

# PS1='\[\e[1m\]┌─[\[\033[0;47;30m\]Qiana\[\033[0;43;91m\]•\[\033[0;101;31m\]•\[\033[0;41;91m\]•\[\033[0;0m\]]──[$PWD] \n\[\e[1m\]└─[\$]\[\e[0m\] '

PS1='\[\e[1m\]┌─[\[\033[0;47;30m\]Rebecca\[\033[0;43;91m\]•\[\033[0;101;31m\]•\[\033[0;41;91m\]•\[\033[0;0m\]\e[0;33m{ \u@\h }\[\e[0m\] ──────── \e[1;30m[ \W ]\e[0;0m ──────── \e[0;33m( \d  \t )\n\[\e[0m\]└─[\$]\[\e[0m\] '

# mint-fortune
/usr/bin/mint-fortune

