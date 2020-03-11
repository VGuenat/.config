#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#ff00ffcc'  # default
T='#009933cc'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying

normal='#008800ff'
normal_light='#00ff00ff'
verif='#000088ff'
verif_light='#0000ffff'
wrong='#880000ff'
wrong_light='#ff0000ff'
black='#00000000'

img_path="$HOME/Pictures/Wallpapers/road-forest.png"
XDG_RUNTIME_DIR="/run/user/$(id -u)"
WAYLAND_DISPLAY=$(find $XDG_RUNTIME_DIR -name "wayland-*" | head -1 | grep -o "[^/]*$")

/usr/bin/swaylock \
--daemonize \
--color 000000 \
--inside-ver-color=$black   \
--ring-ver-color=$verif     \
--text-ver-color=$verif        \
\
--inside-wrong-color=$black \
--ring-wrong-color=$wrong   \
--text-wrong-color=$wrong        \
\
--inside-color=$black      \
--ring-color=$normal        \
--text-color=$normal        \
\
--line-uses-ring          \
--separator-color=$black   \
--show-keyboard-layout    \
\
--key-hl-color=$normal_light       \
--bs-hl-color=$wrong_light        \
\
#--clock               \
#--indicator           \
#--timestr="%H:%M:%S"  \
#--datestr="%a %m, %d %Y" \
#--keylayout 2         \
#--tiling              \

# --screen 1            \
# --blur 5              \
# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
