'This script adds global shortcuts to TODOIST ON WINDOWS 10. Due to some security rescrictions in windows 10 I couldn't '
'run the actual excutable. So this was the only way I could achive it. For bugs questions or surgestions go to          '
'https://rickstaa.github.io/Todoist_Global_Shortcuts_WIN10/'

'---------------SCRIPT---------------'
'--Declare--'
Dim Shell, WMI, pid, objFSO, CurrentDirectory, strFileName
Set Shell = WScript.CreateObject("WScript.Shell")
Set WMI = GetObject("winmgmts:!\\.\root\cimv2")
Set objFSO = CreateObject("Scripting.FileSystemObject")

CurrentDirectory = objFSO.GetAbsolutePathName(".") 			'--Get path--'
strFileName = (CurrentDirectory & "\Todoist To-Do List and Task Manager")		'--Create load str--'

Shell.Run Chr(34) & strFileName & Chr(34)

pid = WaitForProcess("Todoist.Universal.exe", 5) '--Check if program was run--'

If pid > 0 Then
    Shell.AppActivate pid '--Make sure the program is open before keystroke--'
    Shell.SendKeys "q" '--Keystroke--'
Else
End If

'-----------ADDITIONAL FUNCTIONS-----------'
'Check if todoist has loaded'
Function WaitForProcess(imageName, tries)
    Dim wql, process

    wql = "SELECT ProcessId FROM Win32_Process WHERE Name = '" & imageName & "'"

    WaitForProcess = 0

    While tries > 0 And WaitForProcess = 0
        For Each process In WMI.ExecQuery(wql)
            WaitForProcess = process.ProcessId
        Next
        If WaitForProcess = 0 Then
            WScript.Sleep 1000
            tries = tries - 1
        End If
    Wend
End Function
