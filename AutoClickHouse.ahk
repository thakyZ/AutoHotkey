 ; A script to poll placards for purchasing a house in FFXIV. Uses AutoHotKey to automate the placard selection
 ; and navigation process.
 ;
 ; Please note that using 3rd party tools for automation is against the FFXIV Terms of Service.
 ; This script is provided only for educational purposes, and by downloading this script you agree that you are using
 ; this script at your own risk, and that I am not responsible for anything that happens to your account/game client/PC.
 ;
 ; The sleep times in this script may need to be changed depending on your latency.
 ;
 ; This script assumes that your keybindings are default. Use the game's backup tool to save your keybindings if you
 ; have changed them, and revert them back once done. If you know what you are doing, you can also edit the script.
 ;
 ; How to use:
 ;
 ; - Install AHK
 ; - Save script to somewhere accessible (download ZIP button, unzip etc)
 ; - Double click on the script. An AHK icon should show up in your system tray.
 ; - Tab back to the game and ensure that your keybindings are set to default.
 ; - Focus target the placard of the home you want to buy (Shift-F in default configuration on keyboard)
 ; - Press Delete to start the script. It may fail in the first loop, this is normal. After that it will function normally.
 ; - Press Home to pause and resume the script.
 ; - Press F1 to close the script altogether. You can also press Home to pause, then close AHK from the system tray.
 ;
 ; AHK will send keypresses directly to the client as long as you start the script while the client is targeted.
 ; After that, you can tab out and use your computer normally. This requires you to run the script as an administrator.
 ; The working logic for this was provided by xivMiku (https://gist.github.com/xivMiku) in their fork.
 ;
 ; If the script ends up getting disturbed, just let it run for a while - eventually it should fall back in line.
 ;
 ; Note: This script aims to purchase a personal house, and assumes you are not in an FC, or do not have land purchasing
 ; permissions for your FC. If you have land purchasing permissions for your FC, this script will misbehave. Uncomment
 ; lines 61 and 62 below to fix this. If you wish to purchase a FC house, keep those lines commented.

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

Delete::
	ID := WinExist("A")
	ToolTip % ID, 0, 0 ; Displays a windowID in top left, put a semicolon in front of this line to disable

	Loop
	{
		ControlSend, , {F10}, ahk_id %ID%
		Sleep 500
		ControlSend, , {Numpad0}, ahk_id %ID%
		Sleep 800
		ControlSend, , {Numpad0}, ahk_id %ID%
		Sleep 400
; remove semicolon from the lines below if you have the option to purchase for FC house but wish to purchase for personal.
;		ControlSend, , {Numpad0}, ahk_id %ID%
;		Sleep 400
		ControlSend, , {Numpad6}, ahk_id %ID%
		Sleep 300
		ControlSend, , {Numpad0}, ahk_id %ID%
		Sleep 1000
	}

return

Home::Pause,Toggle

F1::ExitApp