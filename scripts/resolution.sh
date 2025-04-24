#!/bin/sh

# alternative
# https://unix.stackexchange.com/questions/125556/how-can-i-make-xrandr-changes-persist#125613
# persistance
# chmod +x ~/Scripts/setoutput.sh
# sudo ln -s ~/Scripts/setoutput.sh /etc/X11/Xsession.d/45setoutput

# saved  in /etc/X11/xorg.conf.d/10-monitor.conf

xrandr --output eDP-1 --mode 1600x900
