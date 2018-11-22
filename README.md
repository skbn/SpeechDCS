# SpeechDCS
Plugin for voice attack that allows you to dictate the frequencies for vhf, uhf, adf, and nadir, in Gazelle.

These are the few features that it brings. For now for the Gazelle SA342 of DCS 2.5.3

Installation:

- Copy the Scripts folder in Save Games/DCS or Save Games/DCS.openbeta

- Add to Export.Lua the following: local SphDir=require('lfs');dofile(SphDir.writedir()..[[Scripts\SpeechDCS\Main.lua]])

- Copy the SpeechDCS directory, which is in VoiceAttack, in /Program Files (x86)/VoiceAttack/Apps
  or where you have VoiceAttack installed.
  
- Run VoiceAttack. It is not necessary to run it in administrator mode for the plugin to work.
  Go to Options, General tab, check the box Enable Plugin Support. We reinitiate VoiceAttack, and the next time it starts, the plugin should be active

- Import the profile "Gazelle SA342-Profile.vap" to voiceattack

Use:
Now, everything is installed, it has not been so difficult ;)
Let's see how it works.

The Nadir:

In this case, it only allows changing the coordinates of the waypoints. Selector one "BUT" and selector two in "LAND", "SEA" or "ANEMO".

To change waypoints, just say "Waypoint X", where X is a number between 1 and 9

To change the coordinates within that waypoint, we should say, "Nadir X", where X can be "North", "South", "East", "West". "N, S, E, W or O". Read the first letter to get the cardinal."Norte Sur Este Oeste. Nord Sud Est Ouest". Which allows the use of other languages more easily.

Having said that, we waited 1 second, approximately, to enter dictation mode, and say the 5 digits for the waypoint, without points or commas. Only 5 digits.
If everything went well, we will hear a sound from windows, and if it has gone badly, another different sound.

For the radio and adf frequencies:

In the profiles, when changing them, we must bear in mind that in adf, the number must always be specified at the end, 1 for the left, 2 for the right.
What exists before the number does not matter, but plugin if it collects that last data.

The frequencies must be dictated digit to digit. If it is necessary to add a decimal point, it is specified with "decimal" or "comma" and the following digits,
having to be detected in the voiceattack log, the complete number to be inserted, for example:

Append dictation buffer: 418.1 or Append dictation buffer: 418,1

After this, we will hear by windows one sound or another if everything went well. Or none if voiceattack has not been able to know what we say :D

Below is a short video of how the plugin works


[![Example](http://img.youtube.com/vi/_lAqHCH1dfo/0.jpg)](https://www.youtube.com/watch?v=_lAqHCH1dfo "Example")



If you like this project and want to contribute, you can invite me to a cup of coffee or a beer    [![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=9FTQ98SM9V34C&source=url)
