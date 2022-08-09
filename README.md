# Setup for a new Mac
This repository contains instructions and a script for setting up a new macbook. It is customized according to my personal preferences.

This repository is most likely useless to anyone except me, I just made it public so that I can more easily access its contents on a new computer.


## Automatic
Any parts that can be setup automatically are taken care of by this script.
`/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/adriansahlman/setup_mac/main/setup.sh)"`

## Manual
Manual steps that need to be taken are documented below.

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


### Terminal
`Terminal` -> `Preferences` -> `Profiles` -> `Shell`
Set
* `When the shell exits`: `Close the window`


### SSH
Need to set up SSH keys and config
