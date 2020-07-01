#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

## merge in defaults and keymaps

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

## Sets display configuration
xrandr --auto

## Autostart
setxkbmap latam &
nitrogen --restore &
#sxhkd -c $HOME/.config/sxhkd/sxhkdrc.bspwm &
sxhkd &
#fcitx &
picom &
#dunst &
lxsession & # authentication agent

$HOME/.scripts/status &

#exec i3
#exec bspwm
exec dwm
