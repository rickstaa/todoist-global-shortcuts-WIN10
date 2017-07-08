'This script adds global shortcuts to TODOIST ON WINDOWS 10. Due to some security rescrictions in windows 10 I couldn't '
'run the actual excutable. So this was the only way I could achive it. For bugs questions or surgestions go to          '
'https://www.reddit.com/r/todoist/comments/6l6ooc/how_to_set_a_global_todoist_shortcut_in_windows/'

'---------------SCRIPT---------------'

'Get folder paths
Const ssfSTARTUP = &H7
Const ssfPROGRAM = &H26&

Set oShell = CreateObject("Shell.Application")
Set startupFolder = oShell.NameSpace(ssfSTARTUP)
Set programFolder = oShell.NameSpace(ssfPROGRAM)
Set appsFolder = oShell.NameSpace("shell:AppsFolder")

scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

'Move AHK script to startup folder
dim filesys
set filesys=CreateObject("Scripting.FileSystemObject")
ahPath = scriptdir & "\Todoist_global_shortcuts.ahk"
ahMovePath = startupFolder.Self.Path & "\Todoist_global_shortcuts1.ahk"
wscript.Echo ahPath 
wscript.Echo ahMovePath
filesys.CopyFile ahPath, ahMovePath