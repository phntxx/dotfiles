# Load starship
eval "$(starship init zsh)"

# Load aliases
for file in ~/.zsh/aliases/*.zsh; do
  source "${file}"
done
unset file

# Load plugins
source ~/.zsh/plugins/index.zsh

# Reconfigure up- and down-arrows for zsh-history-substring-search
bindkey '\e[A' history-substring-search-up
bindkey '\e[B' history-substring-search-down
