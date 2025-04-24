#!/usr/bin/env bash

i3status -c ~/.config/i3status/config | while :
do
  read line
  pomodoro=`/usr/lib/python3.13/site-packages/i3_gnome_pomodoro/pomodoro_client.py status`
  echo "$pomodoro| $line" || exit 1
done
