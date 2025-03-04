<^h::
{
    locator := "ahk_exe chrome.exe"
    if not WinExist(locator) {
        Run('"C:\Program Files\Google\Chrome\Application\chrome.exe"')
    } else {
        WinActivate(locator)
    }
}

<^i::
{
    locator := "ahk_exe gvim.exe"
    if not WinExist(locator) {
        Run('"C:\Program Files (x86)\Vim\vim90\gvim.exe"')
    } else {
        WinActivate(locator)
    }
}

<^k::
{
    locator := "ahk_exe Discord.exe"
    WinActivate(locator)
}

<^o::
{
    locator := "ahk_exe Code.exe"
    WinActivate(locator)
}

<^m::
{
    locator := "ahk_exe WindowsTerminal.exe"
    WinActivate(locator)
}

; https://stackoverflow.com/questions/39253268/autohotkey-and-windows-10-how-to-get-current-explorer-path
; https://www.reddit.com/r/Windows11/comments/185ue4j/comment/kb3yxqt/
<^;::
{
    locator := "ahk_class CabinetWClass"
    WinActivate(locator) 
}

; Windows 11 clipboard manager
<^j::
{
    Send("#v")
}

