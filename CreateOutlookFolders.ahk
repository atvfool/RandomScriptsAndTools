^!s::  ; Control+Alt+S hotkey.
IfWinNotExist Inbox - [your email here] - Outlook
    return  ; Outlook isn't open to the right section, so do nothing.
WinActivate  ; Activate the window found by the above command.
letters := ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
SetKeyDelay 100
For letter, val in letters
{
	Send {Alt down}o  ; Switch to Folder tab
	Send n{Alt up}	  ; Open new Folder Dialog
	WinWaitActive Create New Folder
	Send %val%  ; Set folder name
	Send {Tab 2} ; Go to Folder Selection
	Send {Home}  ; Go To Top of folder listitem
	Send inbox		 ; Select Inbox
	Send {Right}	 ; right arrow opens inbox folder
	Send quotes		 ; select Quote & SOW folder
	Send {Enter}	 ; Save folder
	Sleep 500
}
return  ; This line serves to finish the hotkey.