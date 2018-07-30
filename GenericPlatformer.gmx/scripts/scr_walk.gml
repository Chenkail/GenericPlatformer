/* argument0: Direction (-1 = left, 1 = right)
 */

//Set image speed to walking
image_speed = global.playerImageSpeedWalk;

//Move sideways
x += argument0 * global.playerSpeed;

