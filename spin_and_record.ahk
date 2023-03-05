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

lock := 0
Delete:: ; Control+Alt+S hotkey.
  if (lock=1) {
    return
  }
  lock:=1
  if not WinExist("FINAL FANTASY XIV")
    return ; FFXIV isn't open to the right section, so do nothing.
  WinActivate ; Activate the window found by the above command.
  x := 0
  Send {LAlt F9 Down}
  Sleep, 100
  Send {LAlt F9 Up}
  Sleep 2000
  Send {LShift down}
  Send {9 down}
  Send {9 up}
  Send {LShift up}
  Sleep 1000
  Loop {
    if (x=20) {
      Send {A up}
      Sleep 500
      break
    }
    if (x=0)
      Send {A down}
    Sleep 500
    x += 1
  }
  Sleep 1000
  Send {LAlt F9 Down}
  Sleep, 100
  Send {LAlt F9 Up}
  lock:=0
return

F1::ExitApp