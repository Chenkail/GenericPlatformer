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
        //Set box x and y values
        boxX1 = boxX - global.levelSelectChoiceSize/2;
        boxY1 = boxY - global.levelSelectChoiceSize/2;
        boxX2 = boxX1 + global.levelSelectChoiceSize;
        boxY2 = boxY1 + global.levelSelectChoiceSize;
        
        //Draw choice box
        draw_roundrect_colour_ext(boxX1,
                                    boxY1,
                                    boxX2,
                                    boxY2,
                                    cornerRadius,
                                    cornerRadius,
                                    global.levelSelectChoiceColor,
                                    global.levelSelectChoiceColor,
                                    false);
        boxX = boxX + global.levelSelectChoiceSize + global.levelSelectSpacing;
    }
    
    //Move to next row
    boxY = boxY + global.levelSelectChoiceSize + global.levelSelectSpacing;
    //Reset x coordinates
    boxX = firstBoxX;
}
