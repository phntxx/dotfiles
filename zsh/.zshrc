# Load starship
eval "$(starship init zsh)"

# Define relevant variables
EDITOR=hx

# Load aliases
for file in ~/.zsh/aliases/*.zsh; do
  source "${file}"
done
unset file

# Load plugins
source ~/.zsh/plugins/index.zsh

# Add variables
export GPG_TTY=$(tty)

# Necessary for zsh autocompletions
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
compinit

# Reconfigure up- and down-arrows for zsh-history-substring-search
bindkey '\e[A' history-substring-search-up
bindkey '\e[B' history-substring-search-down
