set -g fish_key_bindings fish_vi_key_bindings

alias cls clear
alias clearfetch "clear;fastfetch"
alias clf "clear;fastfetch"

set fish_greeting
clear

if not set -q ZED_TERM
    fastfetch
end

starship init fish | source

fish_add_path ~/.tarball-installations/zen
fish_add_path ~/.local/bin
