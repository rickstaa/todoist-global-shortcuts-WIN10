'This script adds global shortcuts to TODOIST ON WINDOWS 10. Due to some security rescrictions in windows 10 I couldn't '
'run the actual excutable. So this was the only way I could achive it. For bugs questions or surgestions go to          '
'https://www.reddit.com/r/todoist/comments/6l6ooc/how_to_set_a_global_todoist_shortcut_in_windows/'

'---------------SCRIPT---------------'
Set WshShell = WScript.CreateObject("WScript.Shell")
If WScript.Arguments.Length = 0 Then
  Set ObjShell = CreateObject("Shell.Application")
  ObjShell.ShellExecute "wscript.exe" _
    , """" & WScript.ScriptFullName & """ RunAsAdministrator", , "runas", 1
  WScript.Quit
End if

'Get folder paths
Const ssfSTARTUP = &H18&
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
fPath  = scriptdir & "\WinStoreAppLinks"
ahMovePath = startupFolder.Self.Path & "\Todoist_global_shortcuts.ahk"
fMovePath  = programFolder.Self.Path & "\WinStoreAppLinks"
filesys.CopyFile ahPath, ahMovePath

'Move WinStoreAppLinks folder
filesys.CopyFolder fPath, fMovePath

WScript.Echo "Workaround successfully installed"