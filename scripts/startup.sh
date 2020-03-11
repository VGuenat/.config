#!/usr/bin/env zsh

# Check if a program is running and run it if needed
function run {
    for pid in $(pgrep $1); do
        kill $pid
    done
    echo "Running $*"
    $@ &
}

# Start a polybar on every monitor or reload the config if it is already
# running
function start_bars {
    for pid in $(pgrep polybar); do
        kill $pid
    done
    for monitor in $(polybar -m | cut -d ":" -f1); do
        MONITOR=$monitor polybar --reload -q example &
    done
}

# Necessary to have a properly-configured display
# Only relevant for X11-based setups
#run autorandr-sl -c
start_bars
run ~/.fehbg
run compton -b
run locki3.sh

# Start normal application (networking, music, ...)
run nm-applet
#eval $(ssh-agent -s)

