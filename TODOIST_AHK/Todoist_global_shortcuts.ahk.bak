#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;----------TODOIST global shortcuts WIN10 workaround----------
; *Created on 05/07/2017 - Version 1.0*
;
; This AutoHotkey script adds global TODOIST shortcuts to WIN 10
;     - alt+ctrl+a (Add new task)
;     - alt+ctrl+s (open todoist)
;
; For questions, issues and suggestions go to: https://rickstaa.github.io/Todoist_Global_Shortcuts_WIN10/
;
;--INSTRUCTIONS--
; 1. Download AutoHotkey from https://autohotkey.com/
; 2. Install AutoHotkey
; 3. Download the Workaround.
; 4. Unzip the Workaround file
; 5. Go to Todoist_Global_Shortcuts_WIN10\TODOIST_AHK
; 6. Drag the "WinStoreAppLinks" folder into the "Program Files Shortcut"
; 7. Drag the "Todoist_global_Shortcuts.ahk" file into the "Startup Folder Shortcut
;
;--NOTES--
; Make sure AutoHotkey is running on startup 

;!DO NOT CHANGE THE CODE AND SETTINGS BELOW UNLESS YOU KNOW WHAT YOU ARE DOING!
;--SCRIPT SETTINGS-- 
SetTitleMatchMode, 2 ; IfWinExist settings
DetectHiddenWindows, On
WaitTime := 1100 ; Adjust this time if the script is not working on program startup
LoadStr := "C:\Program Files\WinStoreAppLinks\Todoist To-Do List and Task Manager" ; Path to where you installed the todoist shortcut

;--Shortkey code--
; Open todoist with alt+ctrl+t shortcut

!^t::
Process, Exist, Todoist.Universal.exeqqqq
IfWinNotExist, ahk_exe Todoist.Universal.exe
{
    Run, %LoadStr%
    return
}
else
{
    Title := "Todoist: To-Do List and Task Manager"
    IfWinActive, %Title%
        WinMinimize, %Title%
    else
        Run, C:\Program Files\WinStoreAppLinks\Todoist To-Do List and Task Manager
}
return

!^a::
Title := "Todoist: To-Do List and Task Manager" ;Todoist window title


Process, Exist, Todoist.Universal.exe
IfWinNotExist, ahk_exe Todoist.Universal.exe
{
        RunWait, %LoadStr%
		sleep, WaitTime ; Waits for Todoist to load
	    WinActivate, %Title% 
		WinWaitActive, %Title% 
		{ 
			send, {q}
			return
		} 
}
else
{
    IfWinActive, %Title%
        WinMinimize, %Title%
    else
        Run, %LoadStr%
	    WinActivate, %Title% 
		WinWaitActive, %Title% 
		{ 
			send, {q}
			return
		} 
}
return