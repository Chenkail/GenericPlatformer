/* argument0: x coordinate to check
 * argument1: y coordinate to check
 */

checkX = argument0;
checkY = argument1;

for (var index = 0; index < global.solidObjectTypes; index++) {
    if (place_meeting(checkX, checkY, scr_solid_objects(index))) {
        return false;
    }
}

//If no solid object found, allow movement
return true;
