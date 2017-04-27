WinActivate, ahk_exe TslGame.exe

WinGetActiveStats, Title, Width, Height, X, Y

SetFormat, Float, 0.2

i := 1 ; Number of iterations that the script will run per key press

`::
    if (WinActive("ahk_exe TslGame.exe") and GetKeyState("``", P) = 1) ; Runs script when game is active and "`" is pressed
    {
        Loop %i%
        {
            MouseClickDrag, Left, Width / 9, Height / 6.75, Width / 1.92, Height / 4
            MouseClickDrag, Left, Width / 9, Height / 4.80, Width / 1.92, Height / 4
          ; MouseClickDrag, Left, Width / 9, Height / 3.72, Width / 1.92, Height / 4 
          ; MouseClickDrag, Left, Width / 9, Height / 3.04, Width / 1.92, Height / 4
          ; MouseClickDrag, Left, Width / 9, Height / 2.57, Width / 1.92, Height / 4
        }

    }
return

NumpadAdd::
    if (i < 10) ; Prevents more than ten iterations
    {
        While GetKeyState("NumpadAdd") ; Press "+" on Numpad to add 1 iteration 
        {
        }
        i++
    }
return

Numpadsub::
    if (i > 1) ; Prevents less than one iteration of the subtraction to occur
    {
        While GetKeyState("NumpadSub") ; Press "-" on Numpad to subtract 1 iteration
        {
        }
        i-- 
    }
return

RControl::
    MsgBox %i%
return

j:: ; Exit script by pressing "j"
    ExitApp
return