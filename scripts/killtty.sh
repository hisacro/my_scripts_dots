#!/bin/bash

# echo "enter tty value to find its' PID:"
# read no

echo "kill $(ps -ft tty$1 | grep tty$1 | cut --b=10-15)"

