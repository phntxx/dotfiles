# Define plugin directory variable
ZSH_PLUGIN_DIR=~/.zsh/plugins

# Source zsh-autosuggestions, zsh-syntax-highlighing and zsh-history-substring-search
source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_PLUGIN_DIR/zsh-history-substring-search/zsh-history-substring-search.zsh

unset ZSH_PLUGIN_DIR