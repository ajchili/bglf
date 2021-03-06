WinActivate, ahk_exe TslGame.exe
WinGetActiveStats, Title, Width, Height, X, Y
SetFormat, Float, 0.2

sx := Width / 9
sy := ((65 * (Height / 1080.0)) + (95 * (Height / 1080.0)))
ex := Width / 1.92
ey := Height / 4
sy2 := ((65 * (2 * (Height / 1080.0))) + (95 * (Height / 1080.0)))

i := 1 ; Number of iterations that the script will run per key press

`::
    if (WinActive("ahk_exe TslGame.exe") and GetKeyState("``", P) = 1) ; Runs script when game is active and "`" is pressed
    {
        Loop %i%
        {
            MouseClickDrag, Left, %sx%, %sy%, %ex%, %ey%
            MouseClickDrag, Left, %sx%, %sy2%, %ex%, %ey%
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
    if (i > 1) ; Prevents less than one iteration
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