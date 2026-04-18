# ~/.config/fish/config.fish

if status is-interactive
    set fish_greeting
    clear
    fastfetch
end

# aliases
alias cls clear

# init
zoxide init fish | source
starship init fish | source
fnm env --use-on-cd --shell fish | source
fish_add_path ~/.fsysutils
