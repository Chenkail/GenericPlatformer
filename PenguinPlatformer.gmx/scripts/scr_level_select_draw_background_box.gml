//Draw level select background box
draw_roundrect_colour_ext(
    global.levelSelectBoxX1,
    global.levelSelectBoxY1,
    global.levelSelectBoxX2,
    global.levelSelectBoxY2,
    global.levelSelectBoxCornerRadius,
    global.levelSelectBoxCornerRadius,
    global.levelSelectBoxColor, //Color of center
    global.levelSelectBoxColor, //Color of border (if different from center color creates gradient)
    false); //Filled in
