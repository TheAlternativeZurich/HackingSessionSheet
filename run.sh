#!/usr/bin/env bash
# Yes, I just made a script for opening a pdf. I want to be able to press <F6> in my vim. Sue me :D
cd "$(dirname "$0")"
if [[ $(evince -v 2> /dev/null) ]]; then
	evince exercises.pdf
elif [[ $(zathura -v 2> /dev/null) ]]; then
	zathura exercises.pdf
fi
