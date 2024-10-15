# ansible-related aliases
alias ag='ansible-galaxy'
alias ap='ansible-playbook'

# `ls`-related aliases
alias l='eza --grid --icons --hyperlink'
alias ls='eza --grid --icons --hyperlink'
alias la='eza --grid --icons --hyperlink -la'
alias ll='eza --grid --icons --hyperlink -ll'

alias yy='yazi'

# `vi`/`vim`-related aliases
# Friendship ended with vi/vim, now helix is my best friend
alias vi='helix'
alias vim='helix'
alias nano='helix'

# miscellaneous aliases

alias to_aiff='afconvert -d BEI24 -f "AIFF"'

# python-related aliases

function vn
  set -f directory "venv"

  echo $argv[1]
  if test $argv[1]
    set directory "$argv[1]"
  end

  python3 -m venv $directory
end

function va
  set -f directory "./venv/bin/activate.fish"
  if test $argv[1]
    set directory "$argv[1]"
  end

	source $directory
end

alias vd='deactivate'

# docker-related aliases

function reset_docker
  if test "$(docker ps -q)"
    docker kill "$(docker ps -q)"
  end

	docker system prune -a -f
end

# miscellaneous aliases that trigger the one-time run of docker containers
# constraints:
# - all aliases must begin with "ds-"
# - docker containers must be launched with -rm flag
# - docker containers must work on the current directory

function ds-jupyter
  docker run \
    -it \
    --rm \
    -e NOTEBOOK_ARGS="--LabApp.token=''" \
    -p 8888:8888 \
    -v $PWD:/home/jovyan \
    jupyter/datascience-notebook
end
