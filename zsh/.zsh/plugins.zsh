# Define plugin directory variable
ZSH_PLUGIN_DIR=~/.zsh/plugins

# Source powerlevel10k and configuration
# source $ZSH_PLUGIN_DIR/powerlevel10k/powerlevel10k.zsh-theme
# source $ZSH_PLUGIN_DIR/.p10k.zsh
eval "$(starship init zsh)"

# Source zsh-autosuggestions, zsh-syntax-highlighing and zsh-history-substring-search
source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_PLUGIN_DIR/zsh-history-substring-search/zsh-history-substring-search.zsh
