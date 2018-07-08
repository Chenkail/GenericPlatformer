mouseInBox = point_in_rectangle(mouse_x, mouse_y, global.levelSelectBoxLeft, global.levelSelectBoxTop, global.levelSelectBoxRight, global.levelSelectBoxBottom);
if (mouseInBox) {
    xOffset = global.levelSelectBoxLeft + global.levelSelectBoxBuffer;
    yOffset = global.levelSelectBoxTop + global.levelSelectBoxBuffer;
    
    column = int64((mouse_x - xOffset)/(global.levelSelectChoiceWidth + global.levelSelectSpacing));
    row = int64((mouse_y - yOffset)/(global.levelSelectChoiceHeight + global.levelSelectSpacing));
    
    levelChoice = ((global.levelSelectPage - 1) * global.levelsPerPage) + ((global.levelSelectColumns * row) + (column + 1));
    
    if(mouse_check_button_pressed(mb_left)) {
        //Test to see if choice is a valid level
        if (levelChoice <= global.numberOfLevels) {
            //Is the level locked?
            if (!scr_is_level_locked(levelChoice)) {
                scr_open_level(levelChoice);
                global.currentLevel = levelChoice;
            }
        }
    }
}
