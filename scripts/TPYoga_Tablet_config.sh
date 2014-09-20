cat >/etc/acpi/events/tp_tablet_mode  <<SCRIPT
event=ibm/hotkey LEN0068:00 00000080 000060c0
action=bash /home/bas/git/bas-rustenburg/thinkpad-yoga/scripts/TPYoga_TabletMode.sh
SCRIPT
