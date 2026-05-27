#!/bin/bash

source /etc/os-release

logo=$(
  find /usr/share/icons /usr/share/pixmaps \
    \( -iname "${LOGO#*-}*.png" \
    -o -iname "${ID}*.png" \
    -o -iname "*distributor-logo*.png" \) \
    2>/dev/null | head -n1
)

[ -z "$logo" ] && logo="/usr/share/pixmaps/linux.png"

fastfetch --logo-type kitty --logo "$logo"
