;Lines starting with a ; are comments and are not part of the actual script.

#NoEnv
SendMode Input
SetWorkingDir, % A_ScriptDir
#SingleInstance Force
SetKeyDelay, 20, 100

; The key that activates the script. For a list of supported keys and combinations, see https://autohotkey.com/docs/Hotkeys.htm
; For a complete list of special keys (like mouse button 5) see: https://autohotkey.com/docs/KeyList.htm
#IfWinActive ahk_exe MonsterHunterWorld.exe
toggle:=false
F9::
  toggle:=!toggle
	While(toggle)
	{
    ; Initialize a random delay between 40 and 97 ms (values may be changed to your liking)
    Random, delay, 40, 97
    Sleep, delay
    ;Send, d
		;ControlSend,, d, ahk_exe MonsterHunterWorld.exe
		SendPlay, d
    Sleep, 20
    ;Send, w
		;ControlSend,, w, ahk_exe MonsterHunterWorld.exe
		SendPlay, w
    ;Send, a
		;ControlSend,, a, ahk_exe MonsterHunterWorld.exe
		SendPlay, a
  }
return
#IfWinActive
#IfWinNotActive ahk_exe MonsterHunterWorld.exe
toggle:=False
#IfWinNotActive

F10::
  toggle:=False
return
