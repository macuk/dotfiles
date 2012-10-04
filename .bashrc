#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

if [ -f "$HOME/.alias" ] ; then
    . "$HOME/.alias"
fi

if [ -f "$HOME/.prompt" ] ; then
    . "$HOME/.prompt"
fi

export EDITOR=vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# PS1="\$(~/.rvm/bin/rvm-prompt) $PS1"

PATH=$PATH:$HOME/.rvm/bin:$HOME/bin

# eval $(ssh-agent)
# ssh-add
