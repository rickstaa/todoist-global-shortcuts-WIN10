# This is a workaround to add global Todoist shortcuts to WINDOWS 10
_Created by Rick Staa on 10/07/2017 - Version 2.0_

## Active bugs:
- On my pc the todoist toggle stoped working see [Issue 5](https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/issues/5)

## Manual

This workaround add the following global TODOIST shortcuts to the todoist WINDOWS 10 app:
    
* alt+ctrl+a (Add new task)
* alt+ctrl+s (open todoist)

For questions, issues and suggestions go to: https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10.

### Installation Instructions

1. [Download AutoHotKey.](https://autohotkey.com/)
2. Install AutoHotKey.
3. [Download the Workaround.](https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/archive/master.zip)    	
4. Unzip the Workaround file.
5. Go to the "Todoist_Global_Shortcuts_WIN10\TODOIST_AHK" folder.
6. Click on the "installer.vbs" file to install the workaround.

### Instructions for the VBS workaround
For the VBS workaround instructions see the README.txt in the TODOIST_VBS folder.

## FAQ 
 
### The workaround is not working what now?

- Make sure AutoHotkey is running on startup.

- Ensure that you have the right user privileges to add files to your user startup folder.

- Still not working go to https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/issues

### I would like the shortcut to work with TODOIST web is this possible?
This shortcut is meant for the windows 10 app. A shortcut autohotkey for the web version can be found on [this](https://github.com/mgroat/Todoist-Global-Hotkey) page.


### How does this workaround work?

A windows 10 universal app can be loaded by using its AppUserModelIDs. This is done by running the following command:



> explorer shell:AppsFolder/AppUserModelID



In this command the "AppUserModelID" refers to the AppUserModelID of the app you want to load. An excellent guide on how to find the AppUserModelID
is located on:



- https://jcutrer.com/howto/windows/find-aumid



When the AppUserModelID is found, it can be used in to create an "AutoHotKey" file. This workaround just automates this process.



### What is the VBS workaround?

This workaround is the first workaround I created it can be used by people that don't like using AutoHotKey. See the README.txt in the TODOIST_VBS folder 
for instructions.
