#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Direction := 0
KeyDown := false

F5::
KeyDown := !KeyDown
Return

F6::
Direction := -1
Return

F7::
Direction := 0
Return

F8::
Direction := 1
Return

If KeyDown {
	SendInput {q down}
  SendInput {e up}
  If (Direction == -1) {
    SendInput {Left down}
    SendInput {Right up}
  } Else If (Direction == 1) {
    SendInput {Left up}
    SendInput {Right down}
  } Else {
    SendInput {Left up}
    SendInput {Right up}
  }
} Else {
  SendInput {q up}
	SendInput {e up}
  SendInput {Left up}
  SendInput {Right up}
}
Return