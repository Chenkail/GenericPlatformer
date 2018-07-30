//Draw level select background box
draw_roundrect_colour_ext(
    boxLeft,
    boxTop,
    boxRight,
    boxBottom,
    cornerRadius,
    cornerRadius,
    global.levelSelectBoxColor, //Color of center
    global.levelSelectBoxColor, //Color of border (if different from center color creates gradient)
    false); //Filled in
