<!`::
{
    ; https://www.autohotkey.com/board/topic/95768-switch-between-windows-of-the-same-application/
    activeClass := WinGetClass("A")
    processName := WinGetProcessName("A")
    WinMoveBottom("A")
    ; https://www.autohotkey.com/boards/viewtopic.php?t=121498
    WinActivate('ahk_class ' activeClass ' ahk_exe ' processName)
    return
}

