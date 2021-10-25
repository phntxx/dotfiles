# `ls`-related aliases
alias l='ls'
alias ls='ls'
alias la='ls -la'
alias ll='ls -ll'

# git related aliases
alias gin='git init'
alias gcl='git clone'
alias gdi='git diff'
alias gpl='git pull'
alias gpu='git push'

function gcm(){
  git add .
  git commit -m $1
}

function ghc() {
	if [ -n $1 ]; then
		git clone git@github.com:$1 $2
	fi
}

# `venv`-related aliases

function vn(){
  if [ -n "$1" ]; then
		python3 -m venv "$1"
	else
		python3 -m venv ./venv
	fi
}

function va(){
  if [ -n "$1" ]; then
		source $1
	else
		source ./venv/bin/activate
	fi
}

alias vd='deactivate'

# `pip`-related aliases

# other aliases