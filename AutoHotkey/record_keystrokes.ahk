#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

endkeyslist = {LButton}{RButton}{MButton}{XButton1}{XButton2}{WheelDown}{WheelUp}{WheelLeft}{WheelRight}{CapsLock}{__________}{Tab}{Enter}{Esc}{BS}{ScrollLock}{Del}{Ins}{Home}{End}{PgUp}{PgDn}{Up}{Down}{Left}{Right}{Numpad0}{Numpad1}{Numpad2}{Numpad3}{Numpad4}{Numpad5}{Numpad6}{Numpad7}{Numpad8}{Numpad9}{NumpadDot}{NumpadIns}{NumpadEnd}{NumpadDown}{NumpadPgDn}{NumpadLeft}{NumpadClear}{NumpadRight}{NumpadHome}{NumpadUp}{NumpadPgUp}{NumpadDel}{NumLock}{NumpadDiv}{NumpadMult}{NumpadAdd}{NumpadSub}{NumpadEnter}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{F13}{F14}{F15}{F16}{F17}{F18}{F19}{F20}{F21}{F22}{F23}{F24}{LWin}{RWin}{LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{Browser_Back}{Browser_Forward}{Browser_Refresh}{Browser_Stop}{Browser_Search}{Browser_Stop}{Browser_Search}{Browser_Favorites}{Browser_Home}{Volume_Mute}{Volume_Down}{Volume_Up}{Media_Next}{Media_Prev}{Media_Stop}{Media_Play_Pause}{Launch_Mail}{Launch_Media}{Launch_App1}{Launch_App2}{AppsKey}{PrintScreen}{CtrlBreak}{Pause}{Break}{Help}{Sleep}{Space}    

$F1::
FileDelete, recording.txt
textStart:="-- START OF RECORDING --`n`n"
FileAppend, %textStart%, recording.txt

Loop 
{
    Input, key, L1 V, %endkeyslist%
    IfInString, ErrorLevel, EndKey: 
    {
        StringTrimleft, key, ErrorLevel, 7
    }

    keyStroke:=" Key: " key " `n"    
    FileAppend, %keyStroke%, recording.txt
}
return

$F2::
textEnd:="`n-- END OF RECORDING --"
FileAppend, %textEnd%, recording.txt
ExitApp 