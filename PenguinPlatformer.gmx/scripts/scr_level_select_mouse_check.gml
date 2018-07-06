xOffset = global.levelSelectBoxX1 + global.levelSelectBoxBuffer;
yOffset = global.levelSelectBoxY1 + global.levelSelectBoxBuffer;

column = int64((mouse_x - xOffset)/(global.levelSelectChoiceWidth + global.levelSelectSpacing));
row = int64((mouse_y - yOffset)/(global.levelSelectChoiceHeight + global.levelSelectSpacing));

levelChoice = (global.levelSelectColumns * row) + (column + 1);

ini_open("savedata.ini");
previousLevelComplete = ini_read_real("levels", levelChoice - 1, 0);

levelUnlocked = false;
if ((levelChoice == 1) or (previousLevelComplete == 1)) {
    levelUnlocked = true; //Can open level if it's the first level or if the previous level has been completed
}

if(mouse_check_button_released(mb_left)) {
    global.currentLevel = levelChoice;
    if (levelChoice <= global.numberOfLevels) {
        if (levelUnlocked) {
            scr_open_level(levelChoice);
        } else {
            //Display locked message
        }
    }
}


