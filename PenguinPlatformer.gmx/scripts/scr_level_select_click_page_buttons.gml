buttonRowLeft = room_width/2 - global.pageButtonRowWidth/2;
buttonRowTop = global.levelSelectPageButtonY - global.levelSelectPageButtonHeight/2;
buttonRowRight = room_width/2 + global.pageButtonRowWidth/2;
buttonRowBottom = global.levelSelectPageButtonY + global.levelSelectPageButtonHeight/2;

mouseInBox = point_in_rectangle(mouse_x, mouse_y, buttonRowLeft, buttonRowTop, buttonRowRight, buttonRowBottom);

if (mouseInBox) {
    buttonChoice = int64((mouse_x - buttonRowLeft)/(global.levelSelectPageButtonWidth + global.levelSelectPageButtonSpacing)) + 1;
    
    if(mouse_check_button_pressed(mb_left)) {
        //Test to see if choice is a valid button
        if (buttonChoice <= global.levelSelectPageControlButtonCount) {
            //Which button was pressed?
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
}

