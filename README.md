# Setup for a new Mac
This repository contains instructions and a script for setting up a new macbook. It is customized according to my personal preferences.

This repository is most likely useless to anyone except me, I just made it public so that I can more easily access its contents on a new computer.

Some things can be automatically setup through two scripts and some need to be manually set in the operating system.

## Automatic
Any parts that can be setup automatically are taken care of by [part1](/setup.part1.sh) and [part2](/setup.part2.sh). IMPORTANT! Make sure that the manual step for disabling computer sleeping when display is off first.

A new terminal needs to be started when running [part2](/setup.part2.sh).

Run the automatic script with:
`/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/adriansahlman/setup_mac/main/setup.part1.sh)"` <br>
RESTART TERMINAL <br>
`/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/adriansahlman/setup_mac/main/setup.part2.sh)"` <br>

## Manual
Manual steps that need to be taken are documented below.

### System Preferences

#### Trackpad
##### Point & Click
* *Force Click and haptic feedback* - Disable <br>
* *Look up & data detectors* - Disable <br>
* *Tap to click* - Disable <br>
##### Scroll & Zoom
* *Natural scrolling* - Disable <br>
##### More Gestures
* *Swipe between pages* - Off <br>
* *Launchpad* - Disable <br>

#### Keyboard
* *Key repeat rate* - Fastest <br>
* *Delay until repeat* - Shortest <br>
* *Turn keyboard backlight off after inactivity* - After 5 Seconds <br>
* *Press fn key to* - Do Nothing <br>
##### Keyboard Shortcuts...
Modifier Keys
* *Caps Lock* - Escape <br>
* *Function* - Control <br>
##### Text Input -> Input Sources -> Edit...
All Input Sources
* *Correct spelling automatically* - Disable <br>
* *Capitalise words automatically* - Disable <br>
* *Add full stop with double-space* - Disable <br>
* *Use smart quotes and dashes* - Disable <br>
##### Text Input -> Text Replacements...
* *omw* - Remove replacement <br>

#### Control Centre
##### Control Center Modules
* *Bluetooth* - Show in Menu Bar <br>
* *Sound* - Always Show in Menu Bar <br>
##### Other Modules
Battery
* *Show Percentage* - Enable <br>

#### Desktop & Dock
* *Automatically hide and show the Dock* - Enable <br>
* *Show recent applications in Dock* - Disable <br>
* *Automatically rearrange Spaces based on most recent use* - Disable <br>
* *When switching to an application, switch to a Space with open windows for the application* - Disable <br>

#### Lock Screen
* *Require password after screen saver begins or display is turned off* - After 15 minutes <br>

#### Displays
Night Shift...
* *Schedule* - Sunset to Sunrise <br>

Advanced...
* *Prevent automatic sleeping on power adapter when the display is off* - Enable <br>

#### Notifications
-> Tips <br>
* *Allow notifications* - Disable <br>


### Finder
Open a Window <br> <br>
`View` -> `as List` <br> <br>
`Finder` -> `Settings...` <br>
Sidebar <br>
* *Favorites - $USER* - Enable <br>

General <br>
* *New Finder windows show:* - $USER <br>

Advanced <br>
* *Show all filename extensions* - Enable <br>


### Terminal
Open a Window <br> <br>
`Terminal` -> `Settings...` <br>
Profiles -> Shell <br>
* *When the shell exits* - Close the window <br>


### SSH
Need to set up SSH keys and config

## Firefox Extensions
https://addons.mozilla.org/en-US/firefox/addon/darkreader/
https://addons.mozilla.org/en-US/firefox/addon/delugeaddtorrent/
https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
https://addons.mozilla.org/en-US/firefox/addon/betterttv/
https://www.frankerfacez.com/
https://addons.mozilla.org/en-US/firefox/addon/7tv/
