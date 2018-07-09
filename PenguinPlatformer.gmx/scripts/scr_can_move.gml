/* argument0: x coordinate to check
 * argument1: y coordinate to check
 * argument2: Should check be horizontal (false) or vertical (true)
 * argument3: Rectangle dimension (width for horizontal, height for vertical
 */

checkCenterX = argument0;
checkCenterY = argument1;

if (argument2) {
    checkLeft = checkCenterX - 1;
    checkRight = checkCenterX + 1;
    checkTop = checkCenterY - argument3/2;
    checkBottom = checkCenterY + argument3/2;
} else {
    checkLeft = checkCenterX - argument3/2;
    checkRight = checkCenterX + argument3/2;
    checkTop = checkCenterY - 1;
    checkBottom = checkCenterY + 1;
}

for (var index = 0; index < global.solidObjectTypes; index++) {
    if (collision_rectangle(checkLeft, checkTop, checkRight, checkBottom, scr_solid_objects(index), false, true)) {
        return false;
    }
}

//If no solid object found, allow movement
return true;
