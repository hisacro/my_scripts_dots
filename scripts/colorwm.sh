#!/bin/bash

var2=$(sed '1!d' ~/.cache/wal/colors)
var1=$(sed '4!d' ~/.cache/wal/colors)

var3=$(sed '2!d' ~/.local/share/themes/simple-thin-borders-green/xfwm4/pattern.txt)
var4=$(sed '5!d' ~/.local/share/themes/simple-thin-borders-green/xfwm4/pattern.txt)

sed -i "s/$var3/$var1/"  ~/.local/share/themes/simple-thin-borders-green/xfwm4/*-active.xpm

sed -i "s/$var4/$var2/"  ~/.local/share/themes/simple-thin-borders-green/xfwm4/*-inactive.xpm

sed -i "s/$var3/$var1/" ~/.local/share/themes/simple-thin-borders-green/xfwm4/pattern.txt

sed -i "s/$var4/$var2/" ~/.local/share/themes/simple-thin-borders-green/xfwm4/pattern.txt

grep -rl "$var3" /usr/share/icons/Solarized-Green-gtk-theme-iconpack/ | xargs sed -i "s/$var3/$var1/g"

gtk-update-icon-cache /usr/share/icons/Solarized-Green-gtk-theme-iconpack

xfwm4 --replace
