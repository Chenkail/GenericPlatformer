//Level numbers
firstLevelNumber = (global.levelSelectPage - 1) * global.levelSelectRows * global.levelSelectColumns + 1;
currentLevelLabel = firstLevelNumber;

//Define starting x and y
firstBoxX = global.levelSelectBoxX1
            + global.levelSelectBoxBuffer
            + global.levelSelectChoiceSize/2;
            
firstBoxY = global.levelSelectBoxY1
            + global.levelSelectBoxBuffer
            + global.levelSelectChoiceSize/2;

cornerRadius = global.levelSelectChoiceSize/4;
            
boxX = firstBoxX;
boxY = firstBoxY;
            
var row;
var column;
for (row = 0; row < global.levelSelectRows; row++) {
    for (column = 0; column < global.levelSelectColumns; column++) {
        //Draw choice box
        scr_level_select_draw_choice_box(boxX, boxY, currentLevelLabel);
        
        //Move to next box
        boxX = boxX + global.levelSelectChoiceSize + global.levelSelectSpacing;
        currentLevelLabel++;
    }
    
    //Move to next row
    boxY = boxY + global.levelSelectChoiceSize + global.levelSelectSpacing;
    //Reset x coordinates
    boxX = firstBoxX;
}
