# Define plugin directory variable
ZSH_PLUGIN_DIR=~/.zsh/plugins

# Install powerlevel10k, source configuration
source $ZSH_PLUGIN_DIR/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f $ZSH_PLUGIN_DIR/.p10k.zsh ]] || source $ZSH_PLUGIN_DIR/.p10k.zsh

# Install zsh-autosuggestions and zsh-syntax-highlighing
source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
