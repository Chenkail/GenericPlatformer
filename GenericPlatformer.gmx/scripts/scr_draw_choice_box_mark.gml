/* argument0: x coordinate of center
 * argument1: y coordinate of center
 * argument2: Level number for box being drawn
 */

spriteX = argument0 - checkMarkWidth/2 - global.levelChoiceMarkHorizontalOffset;
spriteY = argument1 - checkMarkHeight/2 - global.levelChoiceMarkVerticalOffset;

if (scr_is_level_locked(argument2) or scr_is_level_complete(argument2)) {
    if (scr_is_level_locked(argument2)) {
        sprite = spr_lock;
    }
    if (scr_is_level_complete(argument2)) {
        sprite = spr_check_mark;
    }
    draw_sprite(sprite, 0, spriteX, spriteY);
}


