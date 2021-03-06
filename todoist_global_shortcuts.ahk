#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;!DO NOT CHANGE THE CODE AND SETTINGS BELOW UNLESS YOU KNOW WHAT YOU ARE DOING!
SetTitleMatchMode, 2 ; IfWinExist settings
DetectHiddenWindows, On

;--SCRIPT SETTINGS--
WaitTime := 1100 ; Adjust this time if the script is not working on program startup

;--Shortkey code--

; Open Todoist with alt+ctrl+t shortcut
!^t::

Process, Exist, Todoist.exe
IfWinNotExist, ahk_exe Todoist.exe
{
    Run, shell:AppsFolder\com.todoist
    return
}
else
{
    IfWinActive, %Title%
        WinMinimize, %Title%
    else
        Run, shell:AppsFolder\com.todoist
}
return

; Open todoist and add task shortcut
!^a::

Process, Exist, Todoist.exe
IfWinNotExist, ahk_exe Todoist.exe
{
        RunWait, shell:AppsFolder\com.todoist
		sleep, WaitTime ; Waits for Todoist to load
	    WinActivate, %Title%
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
        Run, shell:AppsFolder\com.todoist
		sleep, WaitTime ; Waits for Todoist to load
	    WinActivate, %Title%
		{
			send, {q}
			return
		}
}
return