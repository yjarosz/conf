# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source git autocomplete
#if [ -f /usr/local/git/git-completion.bash ]; then
#    . /usr/local/git/git-completion.bash
#fi
# on mac
#if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
#. `brew --prefix`/etc/bash_completion.d/git-completion.bash
#fi


#bash prompt                                                                                                                                                                                               
function proml {
    #define colors                                                                                                                                                                                         
    local PINK="\[\033[1;31m\]"
    local MOV="\[\033[1;34m\]"
    local BLUE="\[\033[0;34m\]"
    local RED="\[\033[0;31m\]"
    local LIGHT_RED="\[\033[1;31m\]"
    local WHITE="\[\033[1;37m\]"
    local NO_COLOUR="\[\033[0m\]"

    case $TERM in
        xterm*|rxvt*)
            TITLEBAR="\[\033]0;\u@\h:\w\007\]"
            ;;
        *)
            TITLEBAR=""
            ;;
    esac
    
    # for git branches
    PS1_BRANCH='$(__git_ps1 "(%s)")'
    PS1_BRANCH="$RED$PS1_BRANCH$NO_COLOUR"

    PS1="${TITLEBAR}$PINK\D{%H%M}$MOV\u@$HOSTTMP:\w$WHITE\$NO_COLOUR$PS1_BRANCH\n>"
    PS2='>'
    PS4='+'

    
}

proml
unset proml

### User specific aliases and functions ###
alias e='emacs -nw'
alias se="sudo emacs -nw"
alias ll="ls -halt  --group-directories-first -v"

