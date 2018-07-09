///Check if player in portal frame and if so, teleport when down arrow is pressed.
//Define coordinates to check
checkX1 = x - global.portalCheckWidth;
checkY1 = y - global.portalCheckHeight;
checkX2 = x + global.portalCheckWidth;
checkY2 = y + global.portalCheckHeight;
playerX = other.x;
playerY = other.y;

//Check to see if player is in portal boundary
playerInPortal = point_in_rectangle(playerX, playerY, checkX1, checkY1, checkX2, checkY2);

//Teleport to blue portal 2
if ((playerInPortal) and (global.canTeleport)) {
    if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord('S'))) {
         other.x = global.portalBlue2X;
         other.y = global.portalBlue2Y;
         
         //Set alarm to prevent player from automatically teleporting back
         global.canTeleport = false;
         alarm_set(0, global.portalCooldown * global.stepsPerSecond);
    }
}

