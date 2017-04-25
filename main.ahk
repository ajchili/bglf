SetTitleMatchMode, 3

; Loop to detect when ` is pressed
Loop
{
    ; Gets Width and Height of monitor
    WinGetPos , , , Width, Height
    
    if (WinActive("ahk_exe TslGame.exe") and GetKeyState("``", P) = 1)
    {
        loop 3
        {
            ; MouseClickDrag, Left, 215, 160, 940, 300, 5 1080p Display
            ; MouseClickDrag, Left, 215, 230, 940, 300, 5 1440p Display
            
            ; This needs testing on 1080p monitors
            MouseClickDrag, Left, Width / 9, Height / 6.25, Width / 2.5, Height / 4, 5 ; Scaled resolution display
        }
    }
}                                                       
return

j::
    ExitApp
return