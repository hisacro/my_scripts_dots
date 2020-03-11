#!/bin/bash

w=$(wmctrl -d | grep \* | cut -d' ' -f1)
var1=$(sed '4!d' ~/.cache/wal/colors)
var2=$(sed '2!d' ~/.cache/wal/colors)
var3=$(head -n1 ~/.cache/wal/colors)


xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace$w/last-image -s $(cat ~/.cache/wal/wal) 

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace$w/rgba1 -t double -t double -t double -t double $(~/.wall_paper/hex_rgba.py $var2 ) -s 1

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace$w/rgba2 -t double -t double -t double -t double $(~/.wall_paper/hex_rgba.py $var1 ) -s 1

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVGA1/workspace$w/rgba1 -t double -t double -t double -t double $(~/.wall_paper/hex_rgba.py $var2 ) -s 1


xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVGA1/workspace$w/rgba2 -t double -t double -t double -t double $(~/.wall_paper/hex_rgba.py $var3 ) -s 1
