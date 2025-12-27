GetSecondKey() {
    ih := InputHook("L1 M T3","{Delete}{Esc}{Home}{End}{Enter}")
    ih.Start()
    ih.Wait()
    return ih.Input
}

; RightAlt + n, for eñe
>!n::Send "{U+00F1}"
>!+n::Send "{U+00D1}"

; RightAlt + /, for inverted question mark
>!/::Send "{U+00BF}"

; RightAlt + ' then vocal, for acute accent
; RightAlt + ' then c, for cedille
; RightAlt + ' then b, for Eszett
; RightAlt + ' then n, for eñe
; RightAlt + ' then ?, for inverted question mark
; RightAlt + ' then -, for em dash
; RightAlt + ' then [, for open guillemet
; RightAlt + ' then ], for close guillemet
>!'::
{
    key := GetSecondKey()
    if (key == "a") { 
        Send "{U+00E1}"
    }
    else if (key == "A") { 
        Send "{U+00C1}"
    }
    if (key == "b") { 
        Send "{U+00DF}"
    }
    else if (key == "B") { 
        Send "{U+1E9E}"
    }
    if (key == "c") { 
        Send "{U+00E7}"
    }
    else if (key == "C") { 
        Send "{U+00C7}"
    }
    else if (key == "e") { 
        Send "{U+00E9}"
    }
    else if (key == "E") { 
        Send "{U+00C9}"
    }
    else if (key == "i") { 
        Send "{U+00ED}"
    }
    else if (key == "I") { 
        Send "{U+00CD}"
    }
    else if (key == "o") { 
        Send "{U+00F3}"
    }
    else if (key == "O") { 
        Send "{U+00D3}"
    }
    else if (key == "u") { 
        Send "{U+00FA}"
    }
    else if (key == "U") { 
        Send "{U+00DA}"
    }
    else if (key == "n") { 
        Send "{U+00F1}"
    }
    else if (key == "N") { 
        Send "{U+00D1}"
    }
    else if (key == "?") {  
        Send "{U+00BF}"  ; inverted question mark 
    }
    else if (key == "!") {  
        Send "{U+00A1}"  ; inverted exclamation mark 
    }
    else if (key == "'") {  
        Send "{U+0060}"  ; backtick (for keyboards missing the upper left corner key)
    }
    else if (key == "z") {  
        Send "{U+007E}"  ; virgulilla (for keyboards missing the upper left corner key)
    }
    else if (key == "-") { 
        Send "{U+2014}" ; em dash
    }
    else if (key == "[") { 
        Send "{U+00AB}" ; LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (guillemet)
    }
    else if (key == "]") { 
        Send "{U+00BB}" ; RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (guillemet) 
    }
}

; RightAlt + ; then vocal, for grave accent
>!;::
{
    key := GetSecondKey()
    if (key == "a") { 
        Send "{U+00E0}"
    }
    else if (key == "A") { 
        Send "{U+00C0}"
    }
    else if (key == "e") { 
        Send "{U+00E8}"
    }
    else if (key == "E") { 
        Send "{U+00C8}"
    }
    else if (key == "i") { 
        Send "{U+00EC}"
    }
    else if (key == "I") { 
        Send "{U+00CC}"
    }
    else if (key == "o") { 
        Send "{U+00F2}"
    }
    else if (key == "O") { 
        Send "{U+00D2}"
    }
    else if (key == "u") { 
        Send "{U+00F9}"
    }
    else if (key == "U") { 
        Send "{U+00D9}"
    }
}

; RightAlt + [ then vocal, for umlaut
>![::
{
    key := GetSecondKey()
    if (key == "a") { 
        Send "{U+00E4}"
    }
    else if (key == "A") { 
        Send "{U+00C4}"
    }
    else if (key == "e") { 
        Send "{U+00EB}"
    }
    else if (key == "E") { 
        Send "{U+00CB}"
    }
    else if (key == "i") { 
        Send "{U+00EF}"
    }
    else if (key == "I") { 
        Send "{U+00CF}"
    }
    else if (key == "o") { 
        Send "{U+00F6}"
    }
    else if (key == "O") { 
        Send "{U+00D6}"
    }
    else if (key == "u") { 
        Send "{U+00FC}"
    }
    else if (key == "U") { 
        Send "{U+00DC}"
    }
}


; RightAlt + ] then vocal, for circumflex
>!]::
{
    key := GetSecondKey()
    if (key == "a") { 
        Send "{U+00E2}"
    }
    else if (key == "A") { 
        Send "{U+00C2}"
    }
    else if (key == "e") { 
        Send "{U+00EA}"
    }
    else if (key == "E") { 
        Send "{U+00CA}"
    }
    else if (key == "i") { 
        Send "{U+00EE}"
    }
    else if (key == "I") { 
        Send "{U+00CE}"
    }
    else if (key == "o") { 
        Send "{U+00F4}"
    }
    else if (key == "O") { 
        Send "{U+00D4}"
    }
    else if (key == "u") { 
        Send "{U+00FB}"
    }
    else if (key == "U") { 
        Send "{U+00DB}"
    }
}

