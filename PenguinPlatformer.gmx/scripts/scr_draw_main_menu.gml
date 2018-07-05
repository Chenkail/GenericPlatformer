//Setup
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Title
draw_set_font(global.gameTitleFont);
draw_set_color(global.gameTitleFontColor);
draw_text(room_width/2, room_height/5, global.gameTitle);

//Play button
draw_set_font(global.mainMenuButtonFont);
draw_set_color(global.mainMenuButtonFontColor);
draw_text(global.mainMenuPlayButtonX, global.mainMenuPlayButtonY, global.mainMenuPlayButtonText);
