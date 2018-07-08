//Draw level select background box
draw_roundrect_colour_ext(
    global.levelSelectBoxLeft,
    global.levelSelectBoxTop,
    global.levelSelectBoxRight,
    global.levelSelectBoxBottom,
    global.levelSelectBoxCornerRadius,
    global.levelSelectBoxCornerRadius,
    global.levelSelectBoxColor, //Color of center
    global.levelSelectBoxColor, //Color of border (if different from center color creates gradient)
    false); //Filled in
