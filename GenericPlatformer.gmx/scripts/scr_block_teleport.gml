///Check if block in portal frame and if so, teleport when spacebar is pressed.
//Define coordinates to check
checkX1 = x - global.portalCheckWidth;
checkY1 = y - global.portalCheckHeight;
checkX2 = x + global.portalCheckWidth;
checkY2 = y + global.portalCheckHeight;
playerX = other.x;
playerY = other.y;

//Check to see if player is in portal boundary
blockInPortal = point_in_rectangle(playerX, playerY, checkX1, checkY1, checkX2, checkY2);

//Teleport to blue portal 2
if (blockInPortal) {
    if (keyboard_check_pressed(vk_space) {
         other.x = global.portalBlue2X;
         other.y = global.portalBlue2Y;
    }
}

