#!/bin/bash

var=$1

convert "$var" -gravity Center -crop 520x700+0+0 +repage -bordercolor white -border 5x5 "$var"-x

mv "$var"-x ~/Downloads/Moebius/Selected/  
