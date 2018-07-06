/* argument0: Direction (-1 = left, 1 = right)
 */

//Set image speed to walking
image_speed = global.playerImageSpeedWalk;

//Variables for player floating check
floatCheckX1 = x - global.playerFloatCheckWidth;
floatCheckX2 = x + global.playerFloatCheckWidth;
floatCheckY = y + global.playerHeight/2 + 1;

//If player floating, disable walking
playerFloating = false;
if (place_empty(floatCheckX1, floatCheckY) and place_empty(floatCheckX2, floatCheckY)) {
    playerFloating = true;
}

if (!playerFloating) {
    x += argument0 * global.playerSpeed;
}
