<!`::
{
    ; https://www.autohotkey.com/board/topic/95768-switch-between-windows-of-the-same-application/
    ; this only works well with the windows explorer because it has its own class (?)
    ; but for other types of apps is not precise enough. 
    activeClass := WinGetClass("A")
    WinMoveBottom("A")
    ; https://www.autohotkey.com/boards/viewtopic.php?t=121498
    WinActivate('ahk_class ' activeClass)
    return
}

