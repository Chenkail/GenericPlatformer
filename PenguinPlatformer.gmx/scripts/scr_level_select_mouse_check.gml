xOffset = global.levelSelectBoxX1 + global.levelSelectBoxBuffer;
yOffset = global.levelSelectBoxY1 + global.levelSelectBoxBuffer;

column = int64((mouse_x - xOffset)/(global.levelSelectChoiceWidth + global.levelSelectSpacing));
row = int64((mouse_y - yOffset)/(global.levelSelectChoiceHeight + global.levelSelectSpacing));

levelChoice = (global.levelSelectColumns * row) + (column + 1);

if(mouse_check_button_released(mb_left)) {
    //Test to see if choice is a valid level
    if (levelChoice <= global.numberOfLevels) {
        //Is the level locked?
        if (!scr_is_level_locked(levelChoice)) {
            scr_open_level(levelChoice);
            global.currentLevel = levelChoice;
        }
    }
}

