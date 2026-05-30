# ~/.config/fish/config.fish

# aliases
alias fastfetch ~/.config/fish/fastfetchwrapper.sh
alias cls clear
alias clearfetch "clear;fastfetch"
alias clf "clear;fastfetch"

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
