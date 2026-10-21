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

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/falcon1k/.lmstudio/bin
# End of LM Studio CLI section
