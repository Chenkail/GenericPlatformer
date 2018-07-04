//Run button test script
buttonPressed = scr_is_button_pushed(global.playButtonX, global.playButtonY, global.mainMenuButtonWidth, global.mainMenuButtonHeight);
if (buttonPressed) {
    scr_open_level_select();
}
