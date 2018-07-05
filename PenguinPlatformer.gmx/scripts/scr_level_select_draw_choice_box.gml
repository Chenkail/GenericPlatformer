/* argument0: x value of box center
 * argument1: y value of box center
 * argument2: Level label
 */

//Define variables
boxX1 = argument0 - global.levelSelectChoiceWidth/2;
boxY1 = argument1 - global.levelSelectChoiceHeight/2;
boxX2 = boxX1 + global.levelSelectChoiceWidth;
boxY2 = boxY1 + global.levelSelectChoiceHeight;
currentLevelLabel = argument2;

//Set up text for level labels
draw_set_color(global.levelSelectChoiceFontColor);
draw_set_font(global.levelSelectChoiceFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Draw choice box
draw_roundrect_colour_ext(boxX1,
                            boxY1,
                            boxX2,
                            boxY2,
                            global.levelSelectChoiceCornerRadius,
                            global.levelSelectChoiceCornerRadius,
                            global.levelSelectChoiceColor,
                            global.levelSelectChoiceColor,
                            global.levelSelectChoiceOutline);

//Draw level label                            
draw_text(boxX, boxY, string(currentLevelLabel));

