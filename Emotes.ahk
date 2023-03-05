#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

:*:::joy:: ::
SendRaw, (* ^ ω ^)"
Return

:*:::kiss:: ::
SendRaw, ♡ (￣Ɛ￣)
Return

:*:::blush:: ::
SendRaw, (⁄ ⁄•⁄ω⁄•⁄ ⁄)
Return

:*:::meh:: ::
SendRaw, (＃￣ω￣)
Return

:*:::anger:: ::
SendRaw, (҂ `з´ )
Return

:*:::sad:: ::
SendRaw, ( `; ω `; )
Return

:*:::dead:: ::
SendRaw, (×ω×)
Return

:*:::fear:: ::
SendRaw, (/ω＼)
Return

:*:::either:: ::
SendRaw, ┐(︶▽︶)┌
Return

:*:::confuse:: ::
SendRaw, (・ω・;)
Return

:*:::doubt:: ::
SendRaw, (￢ω￢)
Return

:*:::Suprise:: ::
SendRaw, (°ｏ°) !
Return

:*:::hi:: ::
SendRaw, (´• ω •`)ﾉ
Return

:*:::hug-love:: ::
SendRaw, (づ￣ ³￣)づ
Return

:*:::hug:: ::
SendRaw, ⊂(´• ω •`⊂)
Return

:*:::sorry:: ::
SendRaw, (シ_ _)シ
Return

:*:::nosebleeding:: ::
SendRaw, (*￣ﾊ￣)
Return

:*:::hide:: ::
SendRaw, ┬┴┬┴┤･ω･)ﾉ
Return

:*:::write:: ::
SendRaw, __φ(．．)
Return

:*:::sleeping:: ::
SendRaw, (－ω－) zzZ
Return

:*:::cat:: ::
SendRaw, (=^･ω･^=)
Return

:*:::lenny:: ::
SendRaw, ( ͡° ͜ʖ ͡°)
Return

:*:::disapprove:: ::
SendRaw, (ಠ_ಠ)
Return

:*:::goingmad:: ::
SendRaw, ( ╯°□°)╯ ┻━━┻
Return

:*:::returntable:: ::
SendRaw, ┬─┬ノ( º \_ ºノ)
Return

:*:::sexy:: ::
SendRaw, \_(:3 」∠)\_
Return

SendEmote(text) {
	element := text
	SendRaw, %element%
}