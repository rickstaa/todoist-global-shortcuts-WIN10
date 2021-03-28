'This script adds global shortcuts to TODOIST ON WINDOWS 10. Due to some security rescrictions in windows 10 I couldn't '
'run the actual excutable. So this was the only way I could achive it. For bugs questions or surgestions go to          '
'https://www.reddit.com/r/todoist/comments/6l6ooc/how_to_set_a_global_todoist_shortcut_in_windows/'

'---------------SCRIPT---------------'

'- Get folder paths
Const ssfSTARTUP = &H7
Set oShell = CreateObject("Shell.Application")
Set startupFolder = oShell.NameSpace(ssfSTARTUP)
scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

'- Retrieve AHK remove paths
dim filesys
set filesys = CreateObject("Scripting.FileSystemObject")
ahRemovePath = startupFolder.Self.Path & "\todoist_global_shortcuts.ahk"
ahRemovePath2 = startupFolder.Self.Path & "\todoist_global_shortcuts.ahk.bak"

'- Remove file from startupFolder
If filesys.FileExists(ahRemovePath) Then
   filesys.DeleteFile ahRemovePath
End If
If filesys.FileExists(ahRemovePath2) Then
   filesys.DeleteFile ahRemovePath2
End If

'- Print message
WScript.Echo "Todoist global shortcuts workaround successfully removed"
