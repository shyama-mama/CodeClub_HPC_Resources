
# Get the aliases and functions from bashrc
if [ -r ~/.bashrc ]; then
        . ~/.bashrc
fi


# Get the git branch if inside a github directory
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Information to show on the command line. 
export PS1='\[\033[01;35m\]\u\[\033[01;37m\]@\[\033[00;32m\]\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\[\033[01;33m\]$(parse_git_branch)\[\033[00m\] \$ '


SHELL_SESSION_HISTORY=0

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31'

# Function to quickly grep history - can also be an alias
function hg() {
    history | grep "$1";
}

# Go up the directory structure by 'n' levels
function up() {
    i=0
    cds=""
    while [[ $i < $1 ]]; do
        cds="../$cds"
        i=$(($i+1))
    done
    cd $cds
}

# git clone and cd into the dir
function git() {
    if [ $1 = "clone" ]
    then 
        command git $@ && cd "$(basename "$_" .git)"
    else
        command git $@
    fi
}
