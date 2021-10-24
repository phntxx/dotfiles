#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

CYAN="\[$(tput setaf 14)\]"
RESET="\[$(tput sgr0)\]"
PS1="${CYAN}[\u@\h \W]${RESET} "

if [ -f ~/.aliases ]; then
. ~/.aliases
fi