'This script adds global shortcuts to TODOIST ON WINDOWS 10. Due to some security rescrictions in windows 10 I couldn't '
'run the actual excutable. So this was the only way I could achive it. For bugs questions or surgestions go to          '
'https://www.reddit.com/r/todoist/comments/6l6ooc/how_to_set_a_global_todoist_shortcut_in_windows/'

'---------------SCRIPT---------------'

'Find AppUserModelid
Dim itm
With CreateObject("Shell.Application").Namespace("shell:AppsFolder")
  For Each itm In .Items
    If Instr(itm.Name, "Todoist") Then
            pathStr = itm.Path
		end If
  Next
End With


' Print AppUserModelid
Wscript.Echo pathStr
