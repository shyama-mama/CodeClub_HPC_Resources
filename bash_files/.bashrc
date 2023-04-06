# Source global definitions
if [ -r /etc/bashrc ]; then
	. /etc/bashrc
fi


# Somethings to imporve bash history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history

shopt -s histappend  
PROMPT_COMMAND='history -a'

[ -r ~/.bash_aliases ] && source ~/.bash_aliases
