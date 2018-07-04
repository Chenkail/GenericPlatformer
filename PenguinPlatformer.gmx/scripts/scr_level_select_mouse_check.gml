xOffset = room_width/2 - global.levelSelectBoxWidth/2 + global.levelSelectBoxBuffer;
yOffset = room_height/2 - global.levelSelectBoxHeight/2 + global.levelSelectBoxBuffer;

column = int64((mouse_x - xOffset)/(global.levelSelectChoiceWidth + global.levelSelectSpacing));
row = int64((mouse_y - yOffset)/(global.levelSelectChoiceHeight + global.levelSelectSpacing));

levelChoice = (global.levelSelectColumns * row) + (column + 1);

if(mouse_check_button_released(mb_left)) {
    scr_open_level(levelChoice);
}


