/* argument0: x value of box center
 * argument1: y value of box center
 * argument2: Button index
 */

//Define variables
boxX1 = argument0 - global.levelSelectPageButtonWidth/2;
boxY1 = argument1 - global.levelSelectPageButtonHeight/2;
boxX2 = boxX1 + global.levelSelectPageButtonWidth;
boxY2 = boxY1 + global.levelSelectPageButtonHeight;
currentButtonIndex = argument2;

//Draw choice box
draw_roundrect_colour_ext(boxX1,
                            boxY1,
                            boxX2,
                            boxY2,
                            global.levelSelectPageButtonCornerRadius,
                            global.levelSelectPageButtonCornerRadius,
                            global.levelSelectPageButtonOutlineColor,
                            global.levelSelectPageButtonOutlineColor,
                            true);
sprite = scr_get_page_control_button_sprite(currentButtonIndex);
draw_sprite(sprite, 0, argument0, argument1);
