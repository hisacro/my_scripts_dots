#!/bin/bash

# starting 
if [ $1 = "start" ]; then
	# unloading bluetooth module 
	pactl unload-module module-bluetooth-discover
	pactl unload-module module-bluetooth-policy
	# enable and start bluealsa.serivce if not already
	echo "run sudo systemctl start bluealsa"
	# if necessary restart bluetooth.service
	echo "run sudo systemctl restart bluetooth"
	# make sure speaker is connected via blumean at this point
	# verfiy using "amixer -D bluealsa" should see playback limit as 0-127 
fi
# switch to input
if [[ $1 = "input" ]]; then
	# unloading bluetooth, output module silently 
	pactl unload-module module-alsa-sink 
	MODULE=$(pactl load-module module-alsa-source device='bluealsa_raw:DEV=FC:58:FA:05:1D:7C,PROFILE=sco' fragments='4' fragment_size='960' source_name=sb source_properties='device.description="sb"')
fi

# switch to output
if [[ $1 = "output" ]]; then
	# unloading bluetooth, input module silently
	pactl unload-module module-alsa-source 
	MODULE=$(pactl load-module module-alsa-sink device='bluealsa_raw:DEV=FC:58:FA:05:1D:7C,PROFILE=a2dp' fragments='4' fragment_size='960' sink_name=sb sink_properties='device.description="sb"')
fi

# stopping bluealsa
if [[ $1 = "stop" ]]; then
	# load bluetooth modules in pulse
	pactl load-module module-bluetooth-discover
        pactl load-module module-bluetooth-policy
	echo "run sudo systemctl stop bluealsa"
	# to stop bluealsa start automatically at boot run systemctl disable bluealsa
fi

# help 
if [[ $1 = "-h" ]] || [[ $1 = "--help" ]]; then
	echo "valid arguments start, stop, input, output"
fi
234
export PATH="${PATH}:\~\/.myscripts\/"
export PATH="${PATH}:~/.myscripts/"
