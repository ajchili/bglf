WinActivate, ahk_exe TslGame.exe
WinGetActiveStats, Title, Width, Height, X, Y

i := 3 ; Number of iterations that the script will run per key press

`::
    if (WinActive("ahk_exe TslGame.exe") and GetKeyState("``", P) = 1) ; Runs script when game is active and "`" is pressed
    {
        Loop %i%
        {
          ; MouseClickDrag, Left, 215, 160, 1000, 300, 5 ; First item coords for 1080p Display
          ; MouseClickDrag, Left, 215, 230, 1000, 300, 5 ; First item coords for 1440p Display
          ; Width calculation is 65x + 95, where x is number of items on ground
                                                                                     ; 1080p        1440p
            MouseClickDrag, Left, Width / 9, Height / 6.75, Width / 1.92, Height / 4 ; Height 160   Height 230
            MouseClickDrag, Left, Width / 9, Height / 4.80, Width / 1.92, Height / 4 ; Height 225
          ; MouseClickDrag, Left, Width / 9, Height / 3.72, Width / 1.92, Height / 4 ; Height 290
          ; MouseClickDrag, Left, Width / 9, Height / 3.04, Width / 1.92, Height / 4 ; Height 355
          ; MouseClickDrag, Left, Width / 9, Height / 2.57, Width / 1.92, Height / 4 ; Height 420
        }
    }
return

NumpadAdd::
    if (i < 10) ; Press "+" on Numpad to add 1 iteration 
    {
        While GetKeyState("NumpadAdd") ; Prevents more than one iteration of the addition to occur
        {
        }
        i++
    }
return

Numpadsub::
    if (i > 1) ; Press "-" on Numpad to subtract 1 iteration
    {
        While GetKeyState("NumpadSub") ; Prevents more than one iteration of the subtraction to occur
        {
        }
        i-- 
    }
return

RControl::
    MsgBox %i%
return

j:: ; Exit script by pressing j
    ExitApp
return
