if [ -f "$HOME/.alias" ] ; then
    . "$HOME/.alias"
fi

export EDITOR=vim
# export PATH="/opt/wkhtmltopdf/0.9.9:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PS1="\[\033[01;34m\]\$(~/.rvm/bin/rvm-prompt) \[\033[01;32m\]\w\[\033[00;33m\]\$(__git_ps1 \" (%s)\") \[\033[01;36m\]\$\[\033[00m\] "

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
