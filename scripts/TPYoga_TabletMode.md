Scripts
=======

TPYoga_TabletMode.sh
--------------------
This script disables the touchpad and rotates the screen.
It depends on [TPYoga_Rotate.sh](./TPYoga_Rotate.md) in order to rotate the screen.

Run it twice to revert the effect.

To do this automatically on folding into tablet mode, see [TPYoga_Tablet_acpi_config.sh](#TPYoga_Tablet_acpi_config.sh)

Issues:

* Can't enable and disable on-screen keyboard (onboard).
  - Won't launch, therefore it is currently disabled.
* Is not disabled on logout.
  - Only fix so far is to never log out in tablet mode.

TPYoga_Tablet_acpi_config.sh
----------------------------
This script sets up a configuration file in `/etc/acpi/events`.

It needs to be run with root permissions to write in /etc, as well as to restart the acpi daemon.
