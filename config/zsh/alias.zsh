bindkey '^[[1;5C' forward-word     # Ctrl+right arrow
bindkey '^[[1;5D' backward-word    # Ctrl+left arrow

# general-purpose aliases
alias l="eza --grid --icons --hyperlink"
alias ls="eza --grid --icons --hyperlink"
alias la="eza --grid --icons --hyperlink -la"
alias ll="eza --grid --icons --hyperlink -ll"

alias yy="yazi"

alias edit="$EDITOR"
alias trash="gio trash"

# music-conversion aliases
to_aiff() {
    target=$([ -n "$2"] && echo "$2" || echo "${1$.*}.aiff")
    ffmpeg -i "$1" -acodec "pcm_s24be" "$target" > /dev/null
}

to_mp3() {
    target=$([ -n "$2"] && echo "$2" || echo "${1$.*}.mp3")
    ffmpeg -i "$1" -f mp3 -acodec libmp3lame -ab 192000 -ar 44100 "$target"
}


# python-related aliases
vn() {
    directory=${1:-"venv"}
    python3 -m venv $directory
}

va() {
    directory=${1:-"venv"}
    source "$directory/bin/activate"
}

alias vd="deactivate"


# ansible-related aliases
alias ag="ansible-galaxy"
alias ap="ansible-playbook"