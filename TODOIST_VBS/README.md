# This is a workaround to add global Todoist shortcuts to WINDOWS 10
_Created by Rick Staa on 5/07/2017 - Version 1.0_

## Manual
Since TODOIST its Windows 10 app doesn’t support global shortcuts at the moment. I made a little workaround for the "open TODOIST" global shortcut.
This workaround works without "Autohotkey". But it is harder to install and can be slower than the AutoHotKey workaround.

### Instructions

#### _Preparation_
1. Press the WINDOWS key.
2. In the START MENU look for the Todoist program.
3. Drag Todoist to the "TODOIST_VBS" folder.

#### _Add global shortcut to open Todoist_
4. Left click on the *Todoist To-Do List and Task Manager*
5. Set a keyboard shortcut in the "Keyboard Shortcut" field.

#### _Add a global shortcut to open TODOIST and add task_
6. Left click on the *script.vbs* file.
7. Click create a shortcut.
8. Call the new shortcut anything you like.
9. Left click on the Shortcut.
10. Set a keyboard shortcut in the "Keyboard Shortcut" field.
11. Place the "TODOIST_VBS" folder in one of the following folders that are scanned by windows for custom user keyboard shortcuts.
	* Desktop (C:\Desktop)
	* Start Menu folder (C:\ProgramData\Microsoft\Windows\Start Menu\)
	* Programs folder (C:\ProgramData\Microsoft\Windows\Start Menu\Programs)

### NOTES:
Don't change the name of the *Todoist To-Do List and Task Manager* or the script will not work.

## FAQ

## How can I get help?
You can get help by go to https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/issues