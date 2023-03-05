#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
Process, Priority, , High
;#MaxThreadsPerHotkey 2

;#InstallKeybdHook
;#InstallMouseHook

F6::
tog:=!tog
if(tog)
    SetTimer, clk, 500, On
else
    SetTimer, clk, Off
return
clk:
Click
return
;isEnabled := !isEnabled
;loop
;{
;  If not isEnabled
;    break
;
;  MouseClick, left, , , , 0
;  Sleep, 500
;}
;return