;Lines starting with a ; are comments and are not part of the actual script.

#NoEnv
;SendMode Input
SetWorkingDir, % A_ScriptDir
#SingleInstance, Force

; The key that activates the script. For a list of supported keys and combinations, see https://autohotkey.com/docs/Hotkeys.htm
; For a complete list of special keys (like mouse button 5) see: https://autohotkey.com/docs/KeyList.htm
F9::
  isEnabled := !isEnabled
  loop
  {
    MouseMove, 1000, 125
    Sleep, 100
		SendInput, {LButton Down}
    Sleep, 100
    MouseMove, 1225, 125
    Sleep, 100
		SendInput, {LButton Up}
    Sleep, 100
    MouseMove, 810, 165
    Sleep, 100
		SendInput, {LButton Down}
    Sleep, 100
    MouseMove, 1225, 165
    Sleep, 100
		SendInput, {LButton Up}
    Sleep, 100
    MouseMove, 810, 185
    Sleep, 100
		SendInput, {LButton Down}
    Sleep, 100
    MouseMove, 1225, 185
    Sleep, 100
		SendInput, {LButton Up}
    Sleep, 100
    SendInput, !{Down}
    Sleep, 100

    If not isEnabled
      break
  }
Return

F10::
  isEnabled := 0
Return



