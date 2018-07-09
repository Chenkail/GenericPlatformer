mouseInBox = point_in_rectangle(mouse_x, mouse_y, boxLeft, boxTop, boxRight, boxBottom);
if (mouseInBox) {
    xOffset = boxLeft + buffer;
    yOffset = boxTop + buffer;
    
    column = int64((mouse_x - xOffset)/(choiceWidth + spacing));
    row = int64((mouse_y - yOffset)/(choiceHeight + spacing));
    
    levelChoice = ((global.levelSelectPage - 1) * levelsPerPage) + ((columns * row) + (column + 1));
    
    if(mouse_check_button_pressed(mb_left)) {
        //Test to see if choice is a valid level
        if (levelChoice <= numberOfLevels) {
            //Is the level locked?
            if (!scr_is_level_locked(levelChoice)) {
                scr_open_level(levelChoice);
                global.currentLevel = levelChoice;
            }
        }
    }
}
