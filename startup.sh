#!/usr/bin/env zsh

function run {
    if ! pgrep $1; then
        $@ &
    fi
}

run autorandr-sl -c &
run ~/.fehbg &
run compton -b
run nm-applet &

