buttonLeft = global.mainMenuPlayButtonX - global.mainMenuPlayButtonWidth/2;
buttonTop = global.mainMenuPlayButtonY - global.mainMenuPlayButtonHeight/2;
buttonRight = buttonLeft + global.mainMenuPlayButtonWidth;
buttonBottom = buttonTop + global.mainMenuPlayButtonHeight;

//Test if mouse is inside button rectangle
mouseOver = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), buttonLeft, buttonTop, buttonRight, buttonBottom);

//Button moused over vs pressed
if (!mouseOver) {
    buttonPressed = false;
    return false;
} else if (mouse_check_button_pressed(mb_left)) {
        buttonPressed = true;
        return false;
} else if (mouse_check_button_released(mb_left) and global.buttonPressed){
        return true;
}

if (buttonPressed) {
    scr_open_level_select();
}
