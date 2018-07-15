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
            if (y + blockHeight/2 > other.y - other.blockHeight/2 + selfCollisionConstant) and (y - blockHeight/2 < other.y + other.blockHeight/2 - selfCollisionConstant) {
                if (x > other.x) {
                    x += global.playerSpeed;
                } else {
                    x -= global.playerSpeed;
                }
            }
        } else {
            if (x < other.x) {
                //Block touching player is to the left of other block
                otherCheckX = x + blockWidth/2 + other.blockWidth;
            } else {
                //Block touching player is to the right of other block
                otherCheckX = x - blockWidth/2 - other.blockWidth;
            }
            otherCanMove = scr_can_move(otherCheckX, other.y, true, other.blockHeight);
            if (!otherCanMove) {
               if (x < other.x) {
                    //Block touching player is to the left of other block
                    x = other.x - other.blockWidth/2 - blockWidth/2;
                } else {
                    //Block touching player is to the right of other block
                    x = other.x + other.blockWidth/2 + blockWidth/2;
                } 
            }
        }
    }
}
