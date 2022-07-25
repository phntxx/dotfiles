function vn(){
	directory="./venv" && [[ -n $1 ]]  && directory="$1"
	python3 -m venv $directory
}

function va(){
	directory="./venv/bin/activate" && [[ -n $1 ]] && directory="$1"
	source $directory
}

alias vd='deactivate'