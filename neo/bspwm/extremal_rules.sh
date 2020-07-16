#! /bin/bash

wid=$1
class=$2
instance=$3


if [ "$instance" = "popup-bottom-center" ]; then
    echo "state=floating"
    read W H <<< $(xdotool getdisplaygeometry)
    eval "$(xdotool getwindowgeometry --shell $wid )"
    xdotool windowmove $wid $(($W / 2 - $WIDTH / 2)) $(($H - $HEIGHT))
fi
