# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#console emacs-mode on!
set -o emacs

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# setting desired prompt 
. ~/.shells/rc/prompt-formatting
. ~/.shells/rc/aliases

## coloring with bash colors
PS1='\[\e[1;31m\]<\[\e[0;31m\]\t|\[\e[0;37m\]\h:\[\e[0;33m\]\W \[\e[1;31m\]> \[\e[0;0m\]'
  
# competition definition
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

LESS='-R '
LESSCLOSE='/usr/bin/lesspipe %s %s'
LESSOPEN='| /usr/bin/source-highlight-esc.sh %s'

#=====================================================================
# Setting aliases and functions if present
  
# Function definitions.
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

NO_COLOR='\e[0m' #disable any colors

# regular colors
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
MAGENTA='\e[0;35m'
CYAN='\e[0;36m'
WHITE='\e[0;37m'

# emphasized (bolded) colors
EBLACK='\e[1;30m'
ERED='\e[1;31m'
EGREEN='\e[1;32m'
EYELLOW='\e[1;33m'
EBLUE='\e[1;34m'
EMAGENTA='\e[1;35m'
ECYAN='\e[1;36m'
EWHITE='\e[1;37m'

# underlined colors
UBLACK='\e[4;30m'
URED='\e[4;31m'
UGREEN='\e[4;32m'
UYELLOW='\e[4;33m'
UBLUE='\e[4;34m'
UMAGENTA='\e[4;35m'
UCYAN='\e[4;36m'
UWHITE='\e[4;37m'

# background colors
BBLACK='\e[40m'
BRED='\e[41m'
BGREEN='\e[42m'
BYELLOW='\e[43m'
BBLUE='\e[44m'
BMAGENTA='\e[45m'
BCYAN='\e[46m'
BWHITE='\e[47m'
