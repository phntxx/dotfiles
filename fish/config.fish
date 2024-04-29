if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.config/fish/aliases.fish

set PATH $PATH /Users/bastian.meissner/.local/bin /opt/homebrew/bin

starship init fish | source