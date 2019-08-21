# Todoist global shortcuts workarround

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/e75853cacd46490a85cd32996479f160)](https://www.codacy.com/app/rickstaa/Todoist_Global_Shortcuts_WIN10?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=rickstaa/Todoist_Global_Shortcuts_WIN10&amp;utm_campaign=Badge_Grade)
[![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green)](https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/pulse)
[![Contributions](https://img.shields.io/badge/contributions-welcome-orange.svg)](contributing.md)
[![OS windows](https://img.shields.io/badge/OS-windows%2010-informational)](https://www.microsoft.com/en-us/p/todoist-to-do-list-and-task-manager/9nblggh1rl1k?activetab=pivot:overviewtab)

## Manual

This workaround add the following global TODOIST shortcuts to the todoist WINDOWS 10 app:

-   alt+ctrl+a (Add new task)
-   alt+ctrl+s (open todoist)

For questions, issues and suggestions go to: <https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10>.

### Installation Instructions

1.  [Download AutoHotKey](https://autohotkey.com/).

2.  Install AutoHotKey.

3.  [Download the Workaround](https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/archive/master.zip).

4.  Unzip the Workaround file.

5.  Go to the "Todoist_Global_Shortcuts_WIN10\\TODOIST_AHK" folder.

6.  Click on the `installer.vbs` or `installer_todoist_preview.vbs` file to install the workaround.

    -   Use the `installer.vbs` file to install the global shortcut for the regular "Todoist" windows 10 app.
    -   Use the `installer_todoist_preview.vbs` file to install the global shortcut for the "Todoist Preview" windows 10 app.

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
