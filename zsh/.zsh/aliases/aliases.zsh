# `ls`-related aliases
alias l='lsd'
alias ls='lsd'
alias la='lsd -la'
alias ll='lsd -ll'

# git related aliases
function ghc() {
	[ -n $1 ] && [ -n $2 ] && git clone git@github.com:$1 $2
}

# `venv`-related aliases
function vn(){
	directory="./venv" && [[ -n $1 ]]  && directory="$1"
	python3 -m venv $directory
}

function va(){
	directory="./venv/bin/activate" && [[ -n $1 ]] && directory="$1"
	source $directory
}

alias vd='deactivate'

# `ansible`-related aliases

alias ag='ansible-galaxy'
alias ap='ansible-playbook'

# `docker`-related aliases

function reset_docker(){
	[ -n "$(docker ps -q)" ] && docker kill "$(docker ps -q)"
	docker system prune -a -f
}

# other aliases
alias reset_zcompdump='rm -f ~/.zcompdump; compinit'
