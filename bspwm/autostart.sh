#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xset r rate 300 30
xinput set-prop 10 'libinput Accel Speed' -0.4

rm $HOME/.cache/dunst.log
rm $HOME/.cache/eww-calendar.lock
rm $HOME/.cache/eww-escreen.lock
rm $HOME/.cache/eww-control-center.lock
rm -r $HOME/.cache/dunst/

$HOME/.config/polybar/launch.sh &
run sxhkd -c ~/.config/bspwm/sxhkdrc &
feh --bg-fill /home/solid/Pictures/Wallpapers/Wall1.png 
xsetroot -cursor_name left_ptr &
numlockx off &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
run redshift &
run polybar &
run dunst &
