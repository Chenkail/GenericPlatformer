/* argument0: x coordinate of center
 * argument1: y coordinate of center
 */


checkX = argument0 - global.checkMarkWidth/2 - global.checkMarkHorizontalOffset;
checkY = argument1 - global.checkMarkHeight/2 - global.checkMarkVerticalOffset;

draw_sprite(spr_check_mark, 0, checkX, checkY);

