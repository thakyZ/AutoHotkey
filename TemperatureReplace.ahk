#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#MaxThreadsPerHotkey 2

; #Hotstring EndChars FCK
transform,s,chr,176
:*?:*F::
send, %s%F
return

:*?:*C::
send, %s%C
return

:*?:*K::
send, %s%K
return

