#!/usr/bin/bash

LP=$HOME/.local/bin
BOLD=$(tput bold)
RED=$(tput setaf 1)
NORMAL=$(tput sgr0)

for file in $XDG_CONFIG_HOME/scripts/*; do
    last="$(echo $file | awk -F'/' '{print $(NF)}')"
    path="$LP/$last"
    echo "Installing ${BOLD}${RED}$last${NORMAL} in $LP ..."
    if [ -e $path ]; then
        echo "Removing previous file at destination"
        rm $path
    fi
    ln -s $file $path
done
