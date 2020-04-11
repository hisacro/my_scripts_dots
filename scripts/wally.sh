#!/bin/bash


var=$1

var_name=$(basename $var)

#convert "$var" -gravity Center -crop 600x700+0+0 +repage -border 5x5 ~/.wall_paper/Selected/"$var_name" 
convert "$var" -gravity Center -crop 900x950+0+0 +repage -adaptive-resize 520x700 -border 5x5 ~/.wall_paper/Selected/"$var_name" 

wal -i ~/.wall_paper/Selected/"$var_name" 
~/.myscripts/wall_paper.sh
~/.myscripts/walfire.sh
~/.myscripts/colorwm.sh
