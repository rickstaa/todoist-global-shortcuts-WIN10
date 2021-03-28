# Todoist global shortcuts WIN 10 workaround

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/c1ddb8fb72d746789baf7c0e9175ebb2)](https://www.codacy.com/gh/rickstaa/todoist-global-shortcuts-WIN10/dashboard?utm_source=github.com&utm_medium=referral&utm_content=rickstaa/todoist-global-shortcuts-WIN10&utm_campaign=Badge_Grade)
[![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green)](https://github.com/rickstaa/todoist-global-shortcuts-WIN10/pulse)
[![Contributions](https://img.shields.io/badge/contributions-welcome-orange.svg)](contributing.md)
[![os windows](https://img.shields.io/badge/os-windows%2010-informational)](https://www.microsoft.com/en-us/p/todoist-to-do-list-and-task-manager/9nblggh1rl1k?activetab=pivot:overviewtab)

## Manual

Since Todoist, its Windows 10 app doesn't support global shortcuts at the moment. I made a small workaround that adds the "open Todoist" and "Add new Todoist task" global shortcuts to Win 10. These workarounds add the following global TODOIST shortcuts to WIN 10:

    - alt+ctrl+a (Add new task)
    - alt+ctrl+s (open Todoist)

For questions, issues, and suggestions, go to <https://github.com/rickstaa/todoist-global-shortcuts-WIN10/issues>.

### Installation Instructions

To install the Todoist global shortcuts, please perform the steps below:

1.  [Download the WIN 10 Todoist app](https://www.microsoft.com/en-us/p/todoist-to-do-list-and-task-manager/9nblggh1rl1k?activetab=pivot:overviewtab)

2.  [Download AutoHotKey](https://autohotkey.com/).

3.  Install AutoHotKey.

4.  [Download the Workaround](https://github.com/rickstaa/todoist-global-shortcuts-WIN10/archive/master.zip).

5.  Unzip the Workaround file.

6.  Go to the "todoist-global-shortcuts-WIN10\\TODOIST_AHK" folder.

7.  Click on the `installer.vbs` file to install the workaround.

8.  Start AutoHotKey and the "Todoist_global_shortcuts" script (Found in the user-startup folder) or restart the PC for the changes to take effect.

[🎥 A video of the installation procedure can be found here](https://youtu.be/ebrUnpQdHzI).

## FAQ

### The workaround is not working what now

-   Make sure AutoHotkey is running on startup.
-   Ensure that you have the right user privileges to add files to your user-startup folder.
-   Still not working go to <https://github.com/rickstaa/todoist-global-shortcuts-WIN10/issues>

### I would like the shortcut to work with TODOIST web

This shortcut is meant for the windows 10 app. A shortcut AutoHotkey for the web version can be found on [this](https://github.com/mgroat/Todoist-Global-Hotkey) page.

## Contributing

Contributions to this repository are welcome. See the [contribution guidelines](contributing.md) for more information.

## License

[MIT](LICENSE)
