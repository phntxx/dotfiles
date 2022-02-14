# `ls`-related aliases
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -ll --color=auto'

# git related aliases
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

# `ansible`-related aliases

alias ag='ansible-galaxy'
alias ap='ansible-playbook'

# `pip`-related aliases

# other aliases
