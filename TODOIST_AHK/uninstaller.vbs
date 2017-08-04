'This script adds global shortcuts to TODOIST ON WINDOWS 10. Due to some security rescrictions in windows 10 I couldn't '
'run the actual excutable. So this was the only way I could achive it. For bugs questions or surgestions go to          '
'https://www.reddit.com/r/todoist/comments/6l6ooc/how_to_set_a_global_todoist_shortcut_in_windows/'

'---------------SCRIPT---------------'

'- Get folder paths
Const ssfSTARTUP = &H7
Const ssfPROGRAM = &H26&

Set oShell = CreateObject("Shell.Application")
Set startupFolder = oShell.NameSpace(ssfSTARTUP)
Set programFolder = oShell.NameSpace(ssfPROGRAM)
Set appsFolder = oShell.NameSpace("shell:AppsFolder")

scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

'- Create AHK move paths
dim filesys
set filesys = CreateObject("Scripting.FileSystemObject")
ahPath = scriptdir & "\Todoist_global_shortcuts.ahk"
ahMovePath = startupFolder.Self.Path & "\Todoist_global_shortcuts.ahk"
ahMovepath2 = startupFolder.Self.Path & "\Todoist_global_shortcuts.ahk.bak"

'Remove file from startupFolder
If filesys.FileExists(ahMovePath) Then
   filesys.DeleteFile ahMovePath
End If
If filesys.FileExists(ahMovePath2) Then
   filesys.DeleteFile ahMovePath2
End If

'- Print message
WScript.Echo "Workaround successfully deinstalled"
