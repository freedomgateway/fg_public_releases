#!/usr/bin/bash

export DISPLAY=:0.0
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

# Rotate screen if env variable is set [normal, inverted, left, or right]
# This causes a weird error and unless we suddenly need to rotate the display I can't be bothered to fix it --Noah <3
#if [[ ! -z "$ROTATE_DISPLAY"]]; then
# echo "YES"
# (sleep 3 && DISPLAY=:0 xrandr -o $ROTATE_DISPLAY) &
#fi

# Start X server
echo "STARTING X"
# Use this to just start XFCE
#startx
# Use this to start XFCE with cursor hidden
#startx -- -nocursor
# Use this to just start the app with the cursor hidden
startx /usr/bin/java -jar build/libs/fg_atm_app-1.0.jar -- -nocursor