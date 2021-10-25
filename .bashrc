#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Customize bash prompt.
CYAN="\[$(tput setaf 14)\]"
RESET="\[$(tput sgr0)\]"
PS1="${CYAN}[\u@\h \W]${RESET} "

# Get the aliases from the aliases file if available
if [ -f ~/.aliases ]; then
. ~/.aliases
fi