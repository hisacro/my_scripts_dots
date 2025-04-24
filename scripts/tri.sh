#!/bin/env sh

stty -F /dev/ttyACM1 9600
stty -F /dev/ttyACM1 raw

snapshots() {
	ssh tab_local './shot.sh' && echo 'done front';
	fswebcam -c ~/.config/fswebcam/extweb_conf /tmp/`date +%s`.png && echo 'done top';
 	#vgrabbj -f /tmp/3.png;
}

while true;
do
	head -n1 /dev/ttyACM1 | grep true && snapshots
done;

# ;AFTER_LAYER_CHANGE
# G1 X5 Y205 F{travel_speed*60} ;Move away from the print
# G4 S0 ;Wait for move to finish
# G4 P500 ;Wait for 500ms
# M42 S255 P73 ;Trigger
# G4 P200 ;Wait for 200ms
# M42 S0 P73 ;Untrigger
# G4 P500 ;Wait for 500ms
# ;[layer_z]
