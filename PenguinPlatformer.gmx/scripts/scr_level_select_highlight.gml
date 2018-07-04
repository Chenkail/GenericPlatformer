/* argument0: Column
 * argument1: Row
 */
 
//Text alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Define constants
column = argument0;
row = argument1;
firstButtonX = room_width/2 - global.levelSelectBoxWidth + global.levelSelectBoxBuffer;
firstButtonY = room_height/2 - global.levelSelectBoxHeight + global.levelSelectBoxBuffer;
buttonLeft = firstButtonX + column * (global.levelSelectChoiceWidth + global.levelSelectSpacing);
buttonTop = firstButtonY + row * (global.levelSelectChoiceHeight + global.levelSelectSpacing);
buttonRight = buttonLeft + global.levelSelectChoiceWidth;
buttonBottom = buttonRight + global.levelSelectChoiceHeight;
buttonCenterX = buttonLeft + global.levelSelectChoiceWidth/2;
buttonCenterY = buttonTop + global.levelSelectChoiceHeight/2;

draw_roundrect_colour_ext(buttonLeft,
                            buttonTop,
                            buttonRight,
                            buttonBottom,
                            global.levelSelectChoiceCornerRadius,
                            global.levelSelectChoiceCornerRadius,
                            global.levelSelectChoiceHighlightColor,
                            global.levelSelectChoiceHighlightColor,
                            global.levelSelectChoiceHighlightOutline);
//Draw label
draw_set_font(global.levelSelectChoiceHighlightFont);
draw_set_color(global.levelSelectChoiceHighlightFontColor);
draw_text(buttonCenterX, buttonCenterY, string(argument0));

