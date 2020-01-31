# Todoist global shortcuts workarround

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/e75853cacd46490a85cd32996479f160)](https://www.codacy.com/app/rickstaa/Todoist_Global_Shortcuts_WIN10?utm_source=github.com&utm_medium=referral&utm_content=rickstaa/Todoist_Global_Shortcuts_WIN10&utm_campaign=Badge_Grade)
[![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green)](https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/pulse)
[![Contributions](https://img.shields.io/badge/contributions-welcome-orange.svg)](contributing.md)
[![os windows](https://img.shields.io/badge/os-windows%2010-informational)](https://www.microsoft.com/en-us/p/todoist-to-do-list-and-task-manager/9nblggh1rl1k?activetab=pivot:overviewtab)

## Manual

Since Todoist its Windows 10 app doesn’t support global shortcuts at the moment. I made 2 workarounds that add the "open Todoist" and "Add new Todoist tak" global shortcuts to Win 10.

    1. AutoHotKey workaround (Easy to set up, fast and Reliable)
    2. Vbs Workaround (Hard to setup, can be slow)

These workarounds add the following global TODOIST shortcuts to WIN 10:

    - alt+ctrl+a (Add new task)
    - alt+ctrl+s (open todoist)

For questions, issues and suggestions go to: <https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10>.

### Installation Instructions

To install the Todoist global shortcuts please perform the steps below:

1.  [Download the WIN 10 Todoist app](https://www.microsoft.com/en-us/p/todoist-to-do-list-and-task-manager/9nblggh1rl1k?activetab=pivot:overviewtab)

2.  [Download AutoHotKey](https://autohotkey.com/).

3.  Install AutoHotKey.

4.  [Download the Workaround](https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/archive/master.zip).

5.  Unzip the Workaround file.

6.  Go to the "Todoist_Global_Shortcuts_WIN10\\TODOIST_AHK" folder.

7.  Click on the `installer.vbs` or `installer_todoist_preview.vbs` file to install the workaround.
    -   Use the `installer.vbs` file to install the global shortcut for the regular "Todoist" windows 10 app.
    -   Use the `installer_todoist_preview.vbs` file to install the global shortcut for the "Todoist Preview" windows 10 app.

8.  Start AutoHotKey and the "Todoist_global_shortcuts" script (Found in the user-startup folder) or restart the PC for the changes to take effect.

[🎥 A video of the installation procedure can be found here](https://youtu.be/ebrUnpQdHzI).

### Instructions for the VBS workaround

For the VBS workaround instructions see the README.txt in the TODOIST_VBS folder.

## FAQ

### The workaround is not working what now

-   Make sure AutoHotkey is running on startup.
-   Ensure that you have the right user privileges to add files to your user startup folder.
-   Still not working go to <https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/issues>

### I would like the shortcut to work with TODOIST web is this possible

This shortcut is meant for the windows 10 app. A shortcut autohotkey for the web version can be found on [this](https://github.com/mgroat/Todoist-Global-Hotkey) page.

### How does this workaround work

A windows 10 universal app can be loaded by using its AppUserModelIDs. This is done by running the following command:

> explorer shell:AppsFolder/AppUserModelID

In this command the "AppUserModelID" refers to the AppUserModelID of the app you want to load. An excellent guide on how to find the AppUserModelID
is located on:

-   <https://jcutrer.com/howto/windows/find-aumid>

When the AppUserModelID is found, it can be used in to create an "AutoHotKey" file. This workaround just automates this process.

### What is the VBS workaround

This workaround is the first workaround I created it can be used by people that don't like using AutoHotKey. See the README.txt in the TODOIST_VBS folder for instructions.

## Contributing

Contributions to this repository are welcome. See the [contribution guidelines](contributing.md) for more information.

## License

[MIT](LICENSE)
