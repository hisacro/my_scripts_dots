#!/usr/bin/env bash

function battery {
	charge=$(acpi | awk '{ print $4 }')
}

while true; do
	sleep 10m 
	battery
	while [[ ${charge/\%,/} -lt 10 ]]; do
	       notify-send "Charge eejit ${charge}"	
	       sleep 1m
	       battery
       done
done
