function fastfetch
    if test -f /etc/arch-release
        command fastfetch --logo arch_small $argv
    else
        command fastfetch $argv
    end
end
