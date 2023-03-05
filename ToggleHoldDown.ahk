#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#MaxThreadsPerHotkey 2

#InstallKeybdHook
#InstallMouseHook

toggle	:= 0
return

F6::
	toggle	:= !toggle
	if (toggle = 1)
		SendInput, {LButton Down}
	else
		SendInput, {LButton Up}
return
