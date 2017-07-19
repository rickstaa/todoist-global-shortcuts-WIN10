id := "" ; AppUserModelid

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;----------TODOIST global shortcuts WIN10 workaround----------
; *Created on 05/07/2017 by Rick Staa - Version 1.0*
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

;--SCRIPT SETTINGS-- 
WaitTime := 1100 ; Adjust this time if the script is not working on program startup

;!DO NOT CHANGE THE CODE AND SETTINGS BELOW UNLESS YOU KNOW WHAT YOU ARE DOING!
SetTitleMatchMode, 2 ; IfWinExist settings
DetectHiddenWindows, On
Title := "Todoist: To-Do List and Task Manager" ; Todoist window title

;--Shortkey code--

; Open todoist with alt+ctrl+t shortcu
!^t::

; Since Windows apps are hard to run the install.vbs script first need to find your unique UserAppModelid
if (id = ""){
	MsgBox, 4,, For the shortcuts to work you need to run the installer.vbs. Do you want to run it now?
	IfMsgBox, Yes
		try{ 
			Run, installer.vbs
		} catch{
			MsgBox, Hey there! I look like you moved the AutoHotKeyScript file. I suggest downloading the workaround again and running the installer. This is needed since Windows Store Apps are hard to run due to the current Windows 10 Store Apps installation protocol. 
		} 
	Exit
} 

Process, Exist, Todoist.Universal.exe
IfWinNotExist, ahk_exe Todoist.Universal.exe
{
    Run, shell:AppsFolder\%id%
    return
}
else
{
    Title := "Todoist: To-Do List and Task Manager"
    IfWinActive, %Title%
        WinMinimize, %Title%
    else
        Run, shell:AppsFolder\%id%
}
return

; Open todoist and add task shortcut
!^a:: 

; Since Windows apps are hard to run the install.vbs script first need to find your unique UserAppModelid
if (id = ""){
	MsgBox, 4,, For the shortcuts to work you need to run the installer.vbs. Do you want to run it now?
	IfMsgBox, Yes
		try{ 
			Run, installer.vbs
		} catch{
			MsgBox, Hey there! I look like you moved the AutoHotKeyScript file. I suggest downloading the workaround again and running the installer. This is needed since Windows Store Apps are hard to run due to the current Windows 10 Store Apps installation protocol.
		} 
	Exit
} 

Process, Exist, Todoist.Universal.exe
IfWinNotExist, ahk_exe Todoist.Universal.exe
{
        RunWait, shell:AppsFolder\%id%
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
        Run, shell:AppsFolder\%id%
	    WinActivate, %Title% 
		WinWaitActive, %Title% 
		{ 
			send, {q}
			return
		} 
}
return








