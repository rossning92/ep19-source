#SingleInstance, Force
CoordMode, Mouse, Window
Return

; 瞎子一键盲人按摩
$F1::
    cx := 892, cy := 586
    MouseGetPos, x, y
    
    vx := x - cx, vy := y - cy
    mag := Sqrt(vx * vx + vy * vy)
    vx /= mag, vy /= mag
    
    x2 := x + vx * 200, y2 := y + vy * 200
    
    Send q
    Sleep 300
    Send 4www
    Sleep 700
    Send q
    Sleep 360
    MouseMove %x%, %y%
    Send r
    MouseMove %x2%, %y2%, 0
    Send f
    Send s
return