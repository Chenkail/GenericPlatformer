if (other.y < y - blockHeight/2 - other.blockHeight/2 + 10) {
    if (other.y > y - blockHeight/2 - other.blockHeight/2) {
        other.y = y - blockHeight/2 - other.blockHeight/2;
        other.fallSpeed = 0;
    }
} else {
    if (x > other.x) {
        checkX = x + blockWidth/2;
    } else {
        checkX = x - blockWidth/2;
    }
    canMove = scr_can_move(checkX, y, true, blockHeight);
    if (canMove) {
        boxLeft = x - blockWidth/2;
        boxRight = boxLeft + blockWidth;
        boxTop = y - blockHeight/2;
        boxBottom = boxTop + blockHeight;
        touchingPlayer = collision_rectangle(boxLeft, boxTop, boxRight, boxBottom, obj_player, false, true);
        if (!touchingPlayer) {
            if (y + blockHeight/2 > other.y - other.blockHeight/2 + 5) and (y - blockHeight/2 < other.y + other.blockHeight/2 - 5) {
                if (x > other.x) {
                    x += global.playerSpeed;
                } else {
                    x -= global.playerSpeed;
                }
            }
        }
    }
}
