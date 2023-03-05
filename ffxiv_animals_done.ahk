#SingleInstance Force
#InstallKeybdHook
SendMode Input
DetectHiddenWindows, On
SetKeyDelay , 50, 30,    ; 50ms is the default delay between presses, 30ms is the press length

if !A_IsAdmin
{
	Run *RunAs "%A_ScriptFullPath%"
	ExitApp
}

Exit

Delete::  ; Control+Alt+S hotkey.
  if not WinExist("FINAL FANTASY XIV")
    return  ; FFXIV isn't open to the right section, so do nothing.
  WinActivate  ; Activate the window found by the above command.
  x := 0
  Loop {
    if (x=20)
      break
    Send {XButton1}
    Sleep 500
    Send {Numpad2}
    Sleep 500
    Send {Numpad2}
    Sleep 500
    Send {Numpad0}
    Sleep 500
    Send {Numpad0}
    Sleep 500
    Send {Numpad2}
    Sleep 500
    x += 1
  }
return

^Delete::  ; Control+Alt+S hotkey.
  if not WinExist("FINAL FANTASY XIV")
    return  ; FFXIV isn't open to the right section, so do nothing.
  WinActivate  ; Activate the window found by the above command.
  x := 0
  Loop {
    if (x=20)
      break
    Send {XButton1}
    Sleep 500
    Send {Numpad2}
    Sleep 500
    Send {Numpad0}
    Sleep 500
    Send {Numpad0}
    Sleep 500
    Send {Numpad2}
    Sleep 500
    x += 1
  }
return

!Delete::  ; Control+Alt+S hotkey.
  if not WinExist("FINAL FANTASY XIV")
    return  ; FFXIV isn't open to the right section, so do nothing.
  WinActivate  ; Activate the window found by the above command.
  x := 0
  Loop {
    if (x=5)
      break
    Send {XButton1}
    Sleep 500
    Send {NumpadDot}
    Sleep 500
    Send {Numpad2}
    Sleep 500
    x += 1
  }
return

F1::ExitApp