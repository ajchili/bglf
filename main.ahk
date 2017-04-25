SetTitleMatchMode, 3
#IfWinActive PLAYERUNKNOWN'S BATTLEGROUNDS

; Loop to detect when ` is pressed
Loop
{   
    if (GetKeyState("``", P) = 1)
    {
        MouseClickDrag, Left, 215, 160, 940, 300, 5
        MouseClickDrag, Left, 215, 160, 940, 300, 5
        MouseClickDrag, Left, 215, 160, 940, 300, 5
        MouseClickDrag, Left, 215, 160, 940, 300, 5
        MouseClickDrag, Left, 215, 160, 940, 300, 5
    }
}                                                       

return

j::ExitApp
return