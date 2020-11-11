#NoEnv
SendMode Input

; Consistent starting directory.
SetWorkingDir %A_ScriptDir%

; Alt + Enter switches between maximized and minimized window.
!Enter::
WinGet, maximized, MinMax, A
if (maximized)
    WinRestore, A
else
    WinMaximize, A
return
