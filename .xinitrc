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

export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json:/usr/share/vulkan/icd.d/intel_icd.i686.json

## Sets display configuration
xrandr --auto

## Autostart
nitrogen --restore &
#setxkbmap latam &
fcitx5 &
#sxhkd -c $HOME/.config/sxhkd/sxhkdrc.bspwm &
sxhkd -c $HOME/.config/sxhkd/sxhkdrc.dwm &
picom &
#dunst & # Using D-bus
lxpolkit & # polkit authentication agent
dwmblocks &
#redshift -l 5.07:-75.50 &
pipewire &
mpd &

#exec i3
#exec bspwm
exec dwm
