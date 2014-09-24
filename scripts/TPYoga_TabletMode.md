Scripts
=======

TPYoga_TabletMode.sh
--------------------
### Description

This script disables the touchpad and rotates the screen. Run it twice to disable the effect. The screen orientation is inverted, so that the fan does not point in the direction of the user when using the tablet in landscape mode.

To do this automatically on folding into tablet mode, see [TPYoga_Tablet_acpi_config.sh](#TPYoga_Tablet_acpi_config.sh)

### Depends:
  [TPYoga_Rotate.sh](./TPYoga_Rotate.md) in order to rotate the screen.


### Issues/Plans:
* Does not disable the trackpoint mouse and keyboard
  - Possibly implement in future. Not urgent, since keyboard is locked and trackpoint is not as disruptive as touchpad.
* Can't enable and disable on-screen keyboard (onboard).
  - Won't launch, therefore it is currently disabled.
* Is not disabled on logout.
  - Only fix so far is to never log out in tablet mode.

TPYoga_Tablet_acpi_config.sh
----------------------------
This script sets up a configuration file in `/etc/acpi/events`. It also restarts the acpi daemon process to enable it in the current session. 

It needs to be run with root permissions to write in /etc, as well as to restart the acpi daemon.

