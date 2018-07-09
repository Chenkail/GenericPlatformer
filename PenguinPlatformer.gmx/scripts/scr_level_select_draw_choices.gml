///Constants for drawing choices
//Level numbers
firstLevelNumber = (global.levelSelectPage - 1) * rows * columns + 1;
currentLevelLabel = firstLevelNumber;

//Define starting x and y
firstBoxX = boxLeft + buffer + choiceWidth/2;
            
firstBoxY = boxTop + buffer + choiceHeight/2;
            
boxX = firstBoxX;
boxY = firstBoxY;

//Draw using for loops
var row;
var column;
for (row = 0; row < global.levelSelectRows; row++) {
    for (column = 0; column < global.levelSelectColumns; column++) {
        //Draw choice box
        scr_level_select_draw_choice_box(boxX, boxY, currentLevelLabel);
        
        //Move to next box
        boxX = boxX + choiceWidth + spacing;
        currentLevelLabel++;
    }
    
    //Move to next row
    boxY = boxY + choiceHeight + spacing;
    //Reset x coordinates
    boxX = firstBoxX;
}
