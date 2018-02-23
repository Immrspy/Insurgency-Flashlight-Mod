#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
MsgBox, Press F2 to exit
F2::		; Exit the hotkey program.
	ExitApp,
Return
LButton up:: ; Dual Stage Trigger
	Click,
Return
LButton:: 	; Dual Stage Trigger
	If WinActive("INSURGENCY")
	Click,
Return
RButton::	; Tactical Flashlight, it toggles the gadget when ADS
	if WinActive("INSURGENCY")
	{
		Click, right
		random, i, 30, 40
		Sleep, i
		SendInput, g
	}
	else
	{
	Click, right
	}
Return
MButton::	; Opens supply menu, and click where the "Re-supply" button is. If not able to resupply, will open up the supply menu, and move cursor there instead.
	if WinActive("INSURGENCY")
	{
		SendInput, m
		Sleep, 30
		MouseMove, 1100, 1030, 0
		Sleep, 30
		Click,
	}
	else
	{
		Click, Middle
	}
Return
XButton2::	; Spam the flashlight 25 times. May not be long enough for the server to register.
	If WinActive("INSURGENCY")
	{	
		Loop, 50
		{
			Random, i, 30, 50
			Sleep, i
			SendInput, g
		}
	}
	else
	{
	Click, X2
	}
Return
;$r::		; Toggle off flashlight when reloading. Enable if you really want to.
;	if WinActive("INSURGENCY")
;	{
;		SendInput, g{r down}
;		Sleep, 100
;		SendInput, {r up}
;	}
;	else
;	{
;	SendInput, r
;	}
;Return
Numpad0::	; Shout "RPG" in team chat, when CapsLock is enabled
	if WinActive("INSURGENCY")
	{
	SendInput, u
	Sleep, 30
	SendInput, RPG, Get Down! {Enter}
	}
	else
	{
	SendInput, 0
	}
Return
NumpadIns::	; Shout "RPG" in team chat, when CapsLock is disabled
	if WinActive("INSURGENCY")
	{
	SendInput, u
	Sleep, 30
	SendInput, RPG, Get Down! {Enter}
	}
	else
	{
	SendInput, {Ins}
	}
Return
Numpad1::	; Shout "Destroying Cache" when CapsLock is enabled
	if WinActive("INSURGENCY")
	{
	SendInput, u
	Sleep, 30
	SendInput, Destroying the Cache, stand back!{Enter}
	}
	else
	{
	SendInput, 1
	}
Return
NumpadEnd::	; Shout "Destroying Cache" when CapsLock is disabled
	if WinActive("INSURGENCY")
	{
	SendInput, u
	Sleep, 30
	SendInput, Destroying the Cache, stand back!{Enter}
	}
	else
	{
	SendInput, {End}
	}
Return
