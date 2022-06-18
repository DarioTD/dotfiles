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
setxkbmap latam &
#fcitx5 &
picom --experimental-backends &
nitrogen --restore &
#redshift -l 5.07:-75.50 &
lxpolkit & # authentication agent
pipewire &
mpd &

dwmblocks &
exec dbus-launch --exit-with-session dwm
