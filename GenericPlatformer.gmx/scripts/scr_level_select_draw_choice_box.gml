/* argument0: x value of box center
 * argument1: y value of box center
 * argument2: Level label
 */

//Define variables
boxX1 = argument0 - choiceWidth/2;
boxY1 = argument1 - choiceHeight/2;
boxX2 = boxX1 + choiceWidth;
boxY2 = boxY1 + choiceHeight;
currentLevelLabel = argument2;

//Set up text for level labels
draw_set_color(global.levelSelectChoiceFontColor);
draw_set_font(global.levelSelectChoiceFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Draw choice box
draw_roundrect_colour_ext(boxX1, boxY1, boxX2, boxY2, choiceCornerRadius, choiceCornerRadius,
                            choiceColor, choiceColor, choiceOutline);

//Draw level label
if (currentLevelLabel <= numberOfLevels) {
    draw_text(boxX, boxY, string(currentLevelLabel));
    
    //If level has been completed, draw check mark in lower right corner
    ini_open("savedata.ini");
    levelComplete = ini_read_real("levels", currentLevelLabel, 0);
    ini_close();
    scr_draw_choice_box_mark(boxX2, boxY2, currentLevelLabel);
}

