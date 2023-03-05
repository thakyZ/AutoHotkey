#SingleInstance Force
#InstallKeybdHook
SendMode Input
DetectHiddenWindows, On
SetKeyDelay , 50, 30, ; 50ms is the default delay between presses, 30ms is the press length

if !A_IsAdmin
{
  Run *RunAs "%A_ScriptFullPath%"
  ExitApp
}

Exit

+^S:: ; Shift+Num0 hotkey.
  if not WinExist("FINAL FANTASY XIV")
    return ; FFXIV isn't open to the right section, so do nothing.
  WinActivate ; Activate the window found by the above command.
  Send {Numpad0}
  Sleep 1000
  Send {Numpad8}
  Sleep 1000
  Send {Numpad0}
  Sleep 1450
  Send {Numpad0}
return

F1::ExitApp