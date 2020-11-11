#NoEnv
#SingleInstance force
SendMode Input

#IfWinActive ahk_exe explorer.exe
    ^Backspace::
#IfWinActive ahk_class Progman ; Desktop
    ^Backspace::
    Send ^+{Left}{Backspace}
