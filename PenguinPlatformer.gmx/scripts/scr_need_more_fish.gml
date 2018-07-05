/* argument0: Door's x coordinate
 * argument1: Door's y coordinate
 */

centerX = argument0;
centerY = argument1 - global.doorHeight/2 - global.needMoreFishHeight/2;

draw_set_color(c_white);
draw_rectangle(room_width/2, room_height/2, centerX+32, centerY+32, false);

//Draw bubble above door
draw_sprite(spr_chat_bubble, 0, centerX, centerY);

//Draw fish scaled to fit inside bubble
draw_sprite_ext(spr_collectible_fish, 0, centerX, centerY,
                global.needMoreFishScaling,
                global.needMoreFishScaling,
                0, c_white, 1);
