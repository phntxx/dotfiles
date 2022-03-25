# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load aliases
for file in ~/.zsh/aliases/*.zsh; do
  source "${file}"
done
unset file

# Load plugins
source ~/.zsh/plugins.zsh

# Reconfigure up- and down-arrows for zsh-history-substring-search
bindkey '\e[A' history-substring-search-up
bindkey '\e[B' history-substring-search-down
