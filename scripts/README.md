Scripts
=======

TPYoga_Rotate.sh
----------------

Rotates the screen, touch screen and pen input. The command line input is structured so that one can use the arrows to indicate the bottom of the screen. Useful for keyboard shortcuts.


```
Argument:
up - rotate so that the top side of screen becomes bottom of screen
left - rotate so that the left side of screen becomes bottom of screen
right - rotate so that the right side of screen becomes bottom of screen
down - rotate so that the bottom side of screen becomes bottom of screen

Without argument:
Rotate display by 90 degrees counter-clockwise
```

### Tips for keyboard shortcuts

For convenience, you might want to try these simple shortcuts. They will ensure that the arrow direction always points to the bottom of the screen, making it easy to remember how to get a particular orientation:

* Set `<Super>` + `<Left>` to `/.../TPYoga_Rotate.sh left`.
* Set `<Super>` + `<Up>` to `/.../TPYoga_Rotate.sh up`.
* Set `<Super>` + `<Right>` to `/.../TPYoga_Rotate.sh right`.
* Set `<Super>` + `<Down>` to `/.../TPYoga_Rotate.sh down`.

Remember to add the full path to the script in your settings. You might need to set the script to be executable, or you can use bash to run the `TPYoga_Rotate.sh` file.

![Keyboard shortcuts](./rotation_keyboard_shortcuts.png?raw=true "Rotation shortcuts.")

I recommend setting the `<Super>` key to rotate by 90 degrees, since when in tablet mode, only the `<Super>` key is accessible from the front of the screen. This requires some tweaking, since Unity normally maps the `<Super>` key to opening the dash. First, make a new keyboard shortcut for TPYoga_Rotate.sh, but leave it disabled. All that is needed for now is an entry we can modify later.

You will need to install two tools:
`sudo apt-get install compizconfig-settings-manager dconf-editor`

Type `<Alt> + <F2>`, and then type `about:config` into the box that appears. This will show you the CompizConfig settings manager.

<image here>

Go to the launcher tab, and change the `Key to show the Dash, Launcer and Help Overlay` option to a different key. I changed it to `<Super> + <F12>` in my settings.

<image here>

Type `<Alt> + <F2>`, and then type `dconf-editor` into the box that appears. This will show you the dconf Editor application. Open the looking glass icon.

Browse down to `org > gnome > settings-daemon > plugins > media-keys > custom-keybindings`. Look for the shortcut that was created earlier for running `TPYoga_Rotate.sh`. If you left this shortcut disabled, you should see an empty entry in the binding field. Click it and type `<Super>` (including the `<>` characters). Close the dconf Editor, and your  `<Super>` key should now run the script.

<image here>






