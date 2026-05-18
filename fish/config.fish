# ~/.config/fish/config.fish

# aliases
alias cls clear
alias larp-larp-larp-sahur "fastfetch --logo ~/.config/fastfetch/larp-larp-larp-sahur-ascii.txt"
alias clearfetch="clear;fastfetch"

if status is-interactive
    set fish_greeting
    clear
    fastfetch
end

# init
starship init fish | source
fnm env --use-on-cd --shell fish | source
fish_add_path ~/.fsysutils
fish_add_path ~/.tarball-installations/zen
fish_add_path ~/.local/bin
