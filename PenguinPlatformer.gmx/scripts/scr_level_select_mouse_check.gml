xOffset = global.levelSelectBoxX1 + global.levelSelectBoxBuffer;
yOffset = global.levelSelectBoxY1 + global.levelSelectBoxBuffer;

column = int64((mouse_x - xOffset)/(global.levelSelectChoiceWidth + global.levelSelectSpacing));
row = int64((mouse_y - yOffset)/(global.levelSelectChoiceHeight + global.levelSelectSpacing));

levelChoice = (global.levelSelectColumns * row) + (column + 1);

if(mouse_check_button_released(mb_left)) {
    global.currentLevel = levelChoice;
    scr_open_level(levelChoice);
}


