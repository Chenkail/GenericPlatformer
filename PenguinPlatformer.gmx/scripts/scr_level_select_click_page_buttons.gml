xOffset = room_width/2 - global.pageButtonRowWidth/2;

buttonChoice = int64((mouse_x - xOffset)/(global.levelSelectPageButtonWidth + global.levelSelectPageButtonSpacing)) + 1;

if(mouse_check_button_pressed(mb_left)) {
    //Test to see if choice is a valid level
    if (buttonChoice < global.levelSelectPageControlButtonCount) {
        //Is the level locked?
        switch (buttonChoice) {
            case 1:
                scr_level_select_first_page();
                break;
            case 2:
                scr_level_select_previous_page();
                break;
            case 3:
                scr_level_select_next_page();
                break;
            case 4:
                scr_level_select_last_page();
                break;
        }
    }
}

