

# `ls`-related aliases
alias l='eza --grid --icons --hyperlink'
alias ls='eza --grid --icons --hyperlink'
alias la='eza --grid --icons --hyperlink -la'
alias ll='eza --grid --icons --hyperlink -ll'

alias yy='yazi'

set EDITOR /usr/bin/helix
alias edit='$EDITOR'

# conversion-related aliases

function to_aiff
  
  if test -f $argv[1]
    set -f source "$argv[1]"
  else
    return 1
  end

  if test $argv[2]
    set -f target "$argv[2]"
  else
    set -f target "$(path change-extension 'aiff' $argv[1])"
  end

  ffmpeg -i "$source" -acodec "pcm_s24be" "$target"
end


function to_mp3

  if test -f $argv[1]
    set -f source "$argv[1]"
  else
    return 1
  end

  if test $argv[2]
    set -f target "$argv[2]"
  else
    set -f target "$(path change-extension 'mp3' $argv[1])"
  end

  ffmpeg -i "$source" -f mp3 -acodec libmp3lame -ab 192000 -ar 44100 "$target"
end

# python-related aliases

function vn
  set -f directory "venv"
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

# ansible-related aliases

alias ag='ansible-galaxy'
alias ap='ansible-playbook'

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

function ds-adminer
  docker run \
    --rm \
    --network host \
    adminer
end