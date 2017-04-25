; Loop to detect tab event
Loop
{   
    if (GetKeyState("Tab", P) = 1)
    {
        CoordMode, Mouse, Relative
        MouseClickDrag, Left, 300, 100, 500, 100, 2
    }
}                                                       
return

; Hotkey to exit script
^j::
    ExitApp
return