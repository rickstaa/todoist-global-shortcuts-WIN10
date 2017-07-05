# This is a workaround to use global shortcuts for TODOIST on WINDOWS 10
*Created on: 05/07/2017 - Version 1.0*

Since TODOIST its Windows 10 app doesn’t support global shortcuts at the moment. I made a little workaround for the "open TODOIST" global shortcut. This work arround works without "Autohotkey". The workaround with Autohotkey is coming soon.

## Instructions

Place the folder in one of the following folders that are scanned by windows for custom user keyboard shortcuts.
* Desktop (C:\Desktop)
* Start Menu folder (C:\ProgramData\Microsoft\Windows\Start Menu\)
* Programs folder (C:\ProgramData\Microsoft\Windows\Start Menu\Programs)
There might be other folders but those are the onces I tested.

### Preperation
1. Click the download link above.
2. Unzip the file.
3. Go to the *TODOIST_WA* folder.
5. Name the folder anything you want.
4. Place the *TODOIST_WA* folder in any of the above specified folders.

### Add global shortcut to open todoist
1. Inside the folder you just moved Left click on the *Open Todoist Shortcut*
2. Set a keyboard shortcut in the "Keyboard Shortcut" field.

### Add a global shortcut to open todoist and add task
1. Inside the folder you just moved Left click on the *script.vbs* file.
2. Click create shortcut.
3. Call the new shortcut anything you like.
    1. If you placed the folder in the *Start Menu* or *Programs* folder you will get an error.
    2. Click yes
    3. The shortcut will now be created on the desktop
    4. Drag the shortcut to the folder you placed in the *Start Menu* or *Programs* folder.
4. Left click on the Shortcut.
5. Set a keyboard shortcut in the "Keyboard Shortcut" field.

### NOTE:
Don't change the name of the *Open Todoist Shortcut* or the script will not work.
