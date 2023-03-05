#SingleInstance, Force
#InstallKeybdHook
SendMode, Input
DetectHiddenWindows, On
SetMouseDelay, 10000, 30    ; 50ms is the default delay between presses, 30ms is the press length
SetDefaultMouseSpeed, 100

;if !A_IsAdmin
;{
;	Run *RunAs "%A_ScriptFullPath%"
;	ExitApp
;}

Exit

Delete::  ; Control+Alt+S hotkey.
  tog:=!tog
  if not WinExist("FINAL FANTASY XIV")
    return  ; FFXIV isn't open to the right section, so do nothing.
  WinActivate  ; Activate the window found by the above command.

if(tog)
  SetTimer, clk, 500, On
else
  SetTimer, clk, Off
return
clk:
CoordMode, Mouse, Screen
oPosA := [100, 720], oPosB := [2360, 720]
vDiffW := oPosB.1 - oPosA.1
vDiffH := oPosB.2 - oPosA.2
vDelay := 50
Loop, % vDiffW + 1
{
	vPosX := oPosA.1 + A_Index - 1
	vPosY := Round(oPosA.2 + (A_Index-1)*(vDiffH/vDiffW))
	if !(A_Index = 1)
		Sleep, % vDelay
	MouseMove, % vPosX, % vPosY
	if (A_Index = 1)
		SendInput, {RButton Down}
}
SendInput, {RButton Up}
return

F1::ExitApp