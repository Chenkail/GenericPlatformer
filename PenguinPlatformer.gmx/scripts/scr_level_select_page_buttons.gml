buttonRowLeft = 1;
buttonRowRight = 1;
buttonRowTop = 1;
buttonRowBottom = 1;

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
            global.levelSelectPage = int64(global.numberOfLevels / (global.levelSelectColumns * global.levelSelectRows) + 1);
    }
}

