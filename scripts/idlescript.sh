#!/bin/zsh

swayidle -w \
    timeout 300 'locksway.sh' \
    timeout 600 'swaymsg "output * dpms off"' \
        resume 'swaymsg "output * dpms on"' \
    before-sleep 'locksway.sh'
