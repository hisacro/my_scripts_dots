#!/bin/bash

if [[ $1 = "start" ]]; then
	pactl unload-module module-bluetooth-discover
	pactl unload-module module-bluetooth-policy
	pulseaudio -k
	echo "sudo systemctl restart bluetooth"
	echo "connect the speaker"
	echo "sudo systemctl restart bluealsa"
fi

if [[ $1 = "input" ]]; then
	amixer -D bluealsa
	MODULE=$(pactl load-module module-alsa-source device='bluealsa_raw:DEV=FC:58:FA:05:1D:7C,PROFILE=sco' fragments='8' fragment_size='1920' source_name=sb source_properties='device.description="sb"')
fi

if [[ $1 = "output" ]]; then
	pactl unload-module module-alsa-source	
fi
