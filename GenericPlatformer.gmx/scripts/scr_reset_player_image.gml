//Set sprite back to idle animation if not going through door or portal

if (!global.playerTraveling) {
    sprite_index = spr_player_idle;
    image_speed = global.playerImageSpeedIdle;
}

