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
            
var i;
var j;
for (i = 0; i < global.levelSelectRows; i++) {
    for (j = 0; j < global.levelSelectColumns; j++) {
        //Test box for click
        buttonPushed = scr_button_push_test(boxX, boxY, global.levelSelectChoiceSize, global.levelSelectChoiceSize);
        
        //Move to next box
        boxX = boxX + global.levelSelectChoiceSize + global.levelSelectSpacing;
        currentLevelLabel++;
    }
    
    //Move to next row
    boxY = boxY + global.levelSelectChoiceSize + global.levelSelectSpacing;
    //Reset x coordinates
    boxX = firstBoxX;
}
