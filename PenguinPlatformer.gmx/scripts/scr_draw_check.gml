/* argument0: x coordinate of center
 * argument1: y coordinate of center
 */


checkX = argument0 - global.checkMarkWidth/2;
checkY = argument1 - global.checkMarkHeight/2;

draw_sprite(spr_check_mark, 0, checkX, checkY);

