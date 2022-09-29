# Setup for a new Mac
This repository contains instructions and a script for setting up a new macbook. It is customized according to my personal preferences.

This repository is most likely useless to anyone except me, I just made it public so that I can more easily access its contents on a new computer.

Some things can be automatically setup through a [script](/setup) and some need to be manually set in the operating system.

## Automatic
Any parts that can be setup automatically are taken care of by this [script](/setup). Make sure that the manual step for [Sleep](#Sleep) has been made first.

Note that env var `BREW_PATH` must be set for intel-based macs (the default value `/opt/homebrew/bin/brew` only works for apple silicone).

Run the automatic script with:
`/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/adriansahlman/setup_mac/main/setup.sh)"`

## Manual
Manual steps that need to be taken are documented below.

### Sleep
`System Preferences` -> `Battery` -> `Power Adapter`

Enable:
* `Prevent your Mac from automatically sleeping when the display is off`


### Finder
`View` -> `As List`


`Finder` -> `Preferences` -> `General`


Set:
* `New Finder windows show`: `adriansahlman`


`Finder` -> `Preferences` -> `Sidebar`

Enable:
* `Favorites`-> `adriansahlman`


`Finder` -> `Preferences` -> `Advanced`

Enable:
* `Show all filename extensions`

### keyboard
`System Preferences` -> `Keyboard`

Set:
* `Key Repeat` to fastest
* `Delay Until Repeat` to shortest

Change `Modifier Keys...`:
* `Caps Lock`: `Escape`
* `Globe`/`Fn`: `Control`

Enable:
* `Turn keyboard backlight off after 5 secs of inactivity`

`System Preferences` -> `Keyboard` -> `Text`

Remove `omw` shortcut

Disable:
* `Correct spelling automatically`
* `Capitalise words automatically`
* `Add full stop with double-space`
* `Use smart quotes and dashes`


### Mouse/Trackpad
`System Preferences` -> `Trackpad` -> `Scroll & Zoom`

Disable:
* `Scroll direction: Natural`

`System Preferences` -> `Trackpad` -> `More Gestures`

Disable:
* `Swipe between pages`
* `Launchpad`


### Bluetooth
`System Preferences` -> `Bluetooth`

Enable:
* `Show Bluetooth in menu bar`


### Dock
`System Preferences` -> `Dock & Menu Bar`

Disable:
* `Show recent applications in Dock`


### Mission Control
`System Preferences` -> `Mission Control`

Disable:
* `Automatically rearrange Spaces based on most recent use`
* `When switching to an application, switch to a Space with open windows for the application`


### Terminal
`Terminal` -> `Preferences` -> `Profiles` -> `Shell`
Set
* `When the shell exits`: `Close the window`


### SSH
Need to set up SSH keys and config


### Python
Install python 3.8
