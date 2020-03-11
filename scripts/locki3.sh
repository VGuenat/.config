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

xss-lock -- i3lock \
-c 000000 \
--insidevercolor=$black   \
--ringvercolor=$verif     \
\
--insidewrongcolor=$black \
--ringwrongcolor=$wrong   \
\
--insidecolor=$black      \
--ringcolor=$normal        \
--line-uses-ring          \
--separatorcolor=$black   \
\
--verifcolor=$verif        \
--wrongcolor=$wrong        \
--timecolor=$normal        \
--datecolor=$normal        \
--keyhlcolor=$normal_light       \
--bshlcolor=$wrong_light        \
\
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%a %m, %d %Y" \
--keylayout 2         \
--tiling              \

# --screen 1            \
# --blur 5              \
# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
