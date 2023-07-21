^!s::  ; Control+Alt+S hotkey.

letters := ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
SetKeyDelay 100
For letter, val in letters
{
	Send {Ctrl down}{Shift down}n{Ctrl up}{Shift up} ; Create new folder
	Send %val%  ; Set folder name
	Send {Enter}	 ; Save folder
	Sleep 500
}
return  ; This line serves to finish the hotkey.