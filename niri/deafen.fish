#!/usr/bin/env fish

set prev_id (niri msg windows | grep -B0 "(focused)" | grep -oP 'Window ID \K\d+')
niri msg action focus-window --id (niri msg windows | grep -B2 'App ID: "equibop"' | grep -oP 'Window ID \K\d+' | head -1)
ydotool key 29:1 42:1 32:1 32:0 42:0 29:0
niri msg action focus-window --id $prev_id
