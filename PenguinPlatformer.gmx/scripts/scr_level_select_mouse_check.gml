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
            
boxX = firstBoxX;
boxY = firstBoxY;
            
var i;
var j;
for (i = 0; i < global.levelSelectRows; i++) {
    for (j = 0; j < global.levelSelectColumns; j++) {
        //Test box for click
        global.buttonPushed = scr_is_button_pushed(boxX, boxY, global.levelSelectChoiceSize, global.levelSelectChoiceSize);
        global.buttonPushed = true;
        if (global.buttonPushed) {
            scr_open_level(currentLevelLabel);
            break;
        } else {
            //Move to next box
            boxX = boxX + global.levelSelectChoiceSize + global.levelSelectSpacing;
            currentLevelLabel++;
        }
    }
    
    //Move to next row
    boxY = boxY + global.levelSelectChoiceSize + global.levelSelectSpacing;
    //Reset x coordinates
    boxX = firstBoxX;
}
