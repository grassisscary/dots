#!/bin/sh
# ss tool.
# deps: maim, xclip
r=$((RANDOM %25+15))
varrandom=$(cat /dev/urandom | tr -dc "[:alnum:]" | head -c$r)
sspath=$HOME/Pictures/Screenshots

if [ ! -d "$sspath" ]; then mkdir -p $sspath ; fi

maim -s -u -m 10 "$sspath/$varrandom.png" && xclip -selection clipboard -t image/png "$sspath/$varrandom.png"
