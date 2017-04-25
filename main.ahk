TabToggle(){

    if(GetKeyState("Tab","P"))
    {
        CoordMode, Mouse, Relative
        MouseClickDrag, Left, 300, -100, 100, -100, 2
    }
}