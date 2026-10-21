function fastfetch
    if string match -q '*cachyos*' (hostname)
        /bin/fastfetch --logo "$HOME/.config/fastfetch/cachyos-minimal.txt"
    else
        /bin/fastfetch
    end
end
