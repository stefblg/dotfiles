#!/usr/bin/env bash

icon="/home/stefblg/Documents/private/lock.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot -o "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% -blur 10x10 "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte  "$tmpbg"
i3lock -i "$tmpbg"
