#!/usr/bin/env bash
# When converted to tablet, switch off touchpad, rotate screen and launch onboard
# Since opening and closing tabletmode is signaled by the same ACPI event, the script toggles parameters.
SCRIPTS=/home/bas/Git/bas-rustenburg/thinkpad-yoga/scripts
TABUSER=bas

export XAUTHORITY=/home/${TABUSER}/.Xauthority
export XDG_RUNTIME_DIR=/run/user/1000
export DISPLAY=":0"

touchpad=$(xinput list-props "SynPS/2 Synaptics TouchPad" | grep "Device Enabled" | awk -F ":" '{print $2}')
if [ $touchpad -eq 1 ]; then
	${SCRIPTS}/TPYoga_Rotate.sh up
	xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
	#sudo -b -u ${TABUSER} /usr/bin/onboard
	echo `date` > /home/bas/debug_onboard.txt
else
	${SCRIPTS}/TPYoga_Rotate.sh down
	xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1
	#killall onboard
fi
