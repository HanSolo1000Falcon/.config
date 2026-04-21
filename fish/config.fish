# ~/.config/fish/config.fish

# aliases
alias cls clear
alias larp-larp-larp-sahur "fastfetch --logo ~/.config/fastfetch/larp-larp-larp-sahur-ascii.txt --config ~/.config/fastfetch/llls.jsonc"

if status is-interactive
    set fish_greeting
    clear

    set num (random 1 10)

    if test $num -eq 5
        larp-larp-larp-sahur
    else
        fastfetch
    end
end

# init
starship init fish | source
fnm env --use-on-cd --shell fish | source
fish_add_path ~/.fsysutils
fish_add_path ~/.tarball-installations/zen
fish_add_path ~/.fsysutils
