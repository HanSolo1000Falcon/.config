function fastfetch
    if string match -q '*cachyos*' (hostname)
        /usr/bin/fastfetch --logo "$HOME/.config/fastfetch/cachyos-minimal.txt"
    else
        fastfetch
    end
end
