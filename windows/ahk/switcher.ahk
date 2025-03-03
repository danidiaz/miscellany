<^h::
{
    WinActivate "ahk_exe chrome.exe"
}

<^i::
{
    WinActivate "ahk_exe gvim.exe"
}

<^k::
{
    WinActivate "ahk_exe Discord.exe"
}

<^o::
{
    WinActivate "ahk_exe Code.exe"
}

<^m::
{
    WinActivate "ahk_exe WindowsTerminal.exe"
}

; https://stackoverflow.com/questions/39253268/autohotkey-and-windows-10-how-to-get-current-explorer-path
; https://www.reddit.com/r/Windows11/comments/185ue4j/comment/kb3yxqt/
<^;::
{
    WinActivate "ahk_class CabinetWClass"
}
