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

'- Create Launcher

'Find AppUserModelid
Dim itm
With CreateObject("Shell.Application").Namespace("shell:AppsFolder")
  For Each itm In .Items
    If Instr(itm.Name, "Todoist") Then
            pathStr = itm.Path
		end If
  Next
End With

'Add AppUserModelid to AutoHotKey filesys
'Change file extension
strFile = scriptdir & "\Todoist_global_shortcuts.ahk"
strRename = scriptdir & "\Todoist_global_shortcuts.txt"

If filesys.FileExists(strFile) Then
   filesys.MoveFile strFile, strRename
End If

'Open file and add text at top
Const ForReading = 1
Const ForWriting = 2
Set objFile = filesys.OpenTextFile(strRename, ForReading)
objFile.SkipLine
objFile.SkipLine
strContents = objFile.ReadAll
objFile.Close
strFirstLine = "id := """ & pathStr & """ ; AppUserModelid"
strTitle = "Title := ""Todoist Preview"" ; Todoist window title"
strNewContents = strFirstLine & vbCrLf & strTitle & vbCrLf & vbCrLf & strContents

Set objFile = filesys.OpenTextFile(strRename, ForWriting)
objFile.WriteLine strNewContents

objFile.Close

'Change file extension
strFile = scriptdir & "\Todoist_global_shortcuts.txt"
strRename = scriptdir & "\Todoist_global_shortcuts.ahk"

If filesys.FileExists(strFile) Then
   filesys.MoveFile strFile, strRename
End If

'Move file to startupFolder
filesys.CopyFile ahPath, ahMovePath

'- Print message
WScript.Echo "Workaround successfully installed"
