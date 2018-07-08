boxX = room_width/2 - global.pageButtonRowWidth/2;
boxY = global.levelSelectPageButtonY;

var buttonIndex;
for (buttonIndex = 1; buttonIndex <= 4; buttonIndex++) {
    //Draw button
    scr_level_select_draw_page_control_button(boxX, boxY, buttonIndex);
    //Move to next button
    boxX = boxX + global.levelSelectPageButtonWidth + global.levelSelectPageButtonSpacing;
}
