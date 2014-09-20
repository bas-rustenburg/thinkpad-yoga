#!/usr/bin/env bash
# When converted to tablet, switch off touchpad, rotate screen and launch onboard
# Since opening and closing tabletmode is signaled by the same ACPI event, the script toggles parameters.

export XAUTHORITY=`ls -1 /home/*/.Xauthority | head -n 1`
export DISPLAY=":`ls -1 /tmp/.X11-unix/ | sed -e s/^X//g | head -n 1`"
SCRIPTS=/home/bas/git/bas-rustenburg/thinkpad-yoga/scripts
TABUSER=\#1000

touchpad=$(xinput list-props "SynPS/2 Synaptics TouchPad" | grep "Device Enabled" | awk -F ":" '{print $2}')
if [ $touchpad -eq 1 ]; then
	${SCRIPTS}/TPYoga_Rotate.sh up
	xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
	sudo -u ${TABUSER} onboard
else
	${SCRIPTS}/TPYoga_Rotate.sh down
	xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1
	killall onboard
fi
