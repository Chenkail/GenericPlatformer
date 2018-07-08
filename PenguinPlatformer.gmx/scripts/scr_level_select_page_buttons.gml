numberOfButtons = 4;
buttonRowWidth = global.pageButtonRowWidth;
buttonRowHeight = global.levelSelectPageButtonHeight;
buttonRowLeft = room_width - buttonRowWidth/2;
buttonRowRight = global.levelSelectPageButtonY - buttonRowHeight/2;
buttonRowTop = room_width + buttonRowWidth/2;
buttonRowBottom = global.levelSelectPageButtonY + buttonRowHeight/2;

buttonChoice = int64((mouse_x - buttonRowLeft)/(global.levelSelectPageButtonWidth + global.levelSelectPageButtonSpacing));

if(mouse_check_button_pressed(mb_left)) {
    //Perform action based on which button was pressed
    switch (buttonChoice) {
        case 1:
            //Go to first level select page
            global.levelSelectPage = 1;
            break;
        case 2:
            //Go back a page
            if (global.levelSelectPage > 1) {
                global.levelSelectPage--;
            }
            break;
        case 3:
            //Go forward a page
            if (global.levelSelectPage < global.levelSelectPageCount) {
                global.levelSelectPage++;
            }
            break;
        case 4:
            //Go to last page
            global.levelSelectPage = global.levelSelectPageCount;
    }
}

