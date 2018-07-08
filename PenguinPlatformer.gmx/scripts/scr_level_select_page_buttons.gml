numberOfButtons = 4;
buttonRowWidth = (numberOfButtons * global.levelSelectPageButtonWidth) + ((numberOfButtons - 1) * global.levelSelectPageButtonSpacing);
buttonRowHeight = global.levelSelectPageButtonHeight;
buttonRowLeft = room_width - buttonRowWidth/2;
buttonRowRight = room_height - buttonRowHeight/2;
buttonRowTop = room_width + buttonRowWidth/2;
buttonRowBottom = room_height + buttonRowHeight/2;

mouseInPageButtonArea = point_in_rectangle(mouse_x, mouse_y, buttonRowLeft, buttonRowTop, buttonRowRight, buttonRowBottom);

if (mouseInPageButtonArea) {
    buttonChoice = int64((mouse_x - buttonRowLeft)/(global.levelSelectPageButtonWidth + global.levelSelectPageButtonSpacing));
    
    if(mouse_check_button_pressed(mb_left)) {
        //Perform action based on which button was pressed
        switch (buttonChoice) {
            case 0:
                //Go to first level select page
                global.levelSelectPage = 1;
                break;
            case 1:
                //Go back a page
                global.levelSelectPage--;
                break;
            case 2:
                //Go forward a page
                global.levelSelectPage++;
                break;
            case 3:
                //Go to last page
                global.levelSelectPage = global.levelSelectPageCount;
        }
    }
}

