#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# font
xset +fp /usr/share/fonts/local
xset fp rehash

# urxvt
urxvtd -q -o -f
xrdb -load ~/.Xresources 

# screenlock
/usr/bin/xscreensaver -no-splash &

# wallpaper
nitrogen --restore &
compton -GGb &

sxhkd &
exec bspwm
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
