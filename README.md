# (a newer) GBA Link Cable Dumper
A GC and Wii Homebrew App to get GBA BIOS, ROMs and saves via the GC GBA Link Cable.

[Original program by FIX94](https://github.com/FIX94/gba-link-cable-dumper/)

This project is still changing and not gauranteed to be as good as the original fork. Changes made by me may end up in issues not originally found in FIX94's version. If you want to play it safe, I'd recommend using the [original program by FIX94](https://github.com/FIX94/gba-link-cable-dumper/) instead to avoid potential bugs or data loss.

## Changes added

* Warning messages before overwriting or deleting a save file, preventing data loss from accidentally pressing the wrong button
* Appending dates to the backup .sav file, allowing for multiple backups. In the original program, attempting to backup a save with a previous backup on the SD Card would result with "ERROR: Save already backed up!". Instead now saves can be backed up multiple times
* Temporarily semi-broke restoring as the original program expected restores to not have the date in the filename. A work around is provided until restoring is fixed.

# Usage
Make sure to plug in a GC Controller into Port 1 of your console and the GBA Link Cable into Port 2. Users have reported issues when using a third-party Link Cable, so use an official cable.

Now Boot your GBA without a cart inserted, it should automatically boot into the dumper when connected. If your GBA resets when you get to the step of inserting a cart, try to boot your GBA with the cart already inserted and holding down start+select on the GBA bootup, this aborts the game launch and should allow the dumper to boot up from there. From there you can just follow the instructions on screen.  
  
The bin, gba and sav files dumped will be placed in a folder called "dumps" on your main device (SD Gecko on gamecube and SD/USB on Wii). Please note that dumping GBA ROMs can take a long time (32mb takes about 48 minutes) because of the cable protocol limitations, an estimation will be displayed on screen before you dump it as a reference.

When backing up, the date of the backup will be appended onto the filename. Currently, when restoring a savefile it will look for a filename without the date, so you would have to manually rename the file you wish to have restored.

## To do
* Possibily refactor the entire program as mostly everything is in the main function and is hard to navigate :p
* Fix restoring functionality properly, allow to either choose which .sav to use or automatically use the latest file
* Create folders for each game to organize the /dumps/ folder better
* Auto backup during an overwrite/restore or delete to a .bak file
* Perhaps steal more code from GCMM


## Acknowledgement
- Thank you to FIX94 for the original program
- Save Support based on SendSave by Chishm
- GBA BIOS Dumper by Dark Fader
- [suloko](https://github.com/suloku/gcmm) for their [time2name() function](https://github.com/suloku/gcmm/blob/master/source/raw.c) from GCMM
- [yuv422](https://github.com/yuv422/gba-link-cable-dumper) for their [pull request](https://github.com/FIX94/gba-link-cable-dumper/pull/22) on the original repo to fix compile errors
- [hiroi01](https://github.com/hiroi01/gba-link-cable-dumper) for their own [fork](https://github.com/hiroi01/gba-link-cable-dumper/commit/e88f7d4596d974c92a190dec4a6fe1c3d195a93a) to warn before an operation


