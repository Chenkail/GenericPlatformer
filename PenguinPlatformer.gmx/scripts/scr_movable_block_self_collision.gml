if (other.y < blockTop) {
    if (other.y + other.blockHeight/2 > blockTop) and (other.x - other.blockWidth/2 < x + blockWidth/2) and (other.x + other.blockWidth/2 > x - blockWidth/2) {
        if (scr_can_move(x, blockBottom, false, blockWidth)) {
            blockFalling = true;
        } else {
            blockFalling = false;
        }
        if (!blockFalling) {
            other.y = blockTop - other.blockHeight/2;
            other.fallSpeed = 0;
            other.vspeed = 0;
        }
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
        
        if (y + blockHeight/2 > other.y - other.blockHeight/2 + selfCollisionConstant) and (y - blockHeight/2 < other.y + other.blockHeight/2 - selfCollisionConstant) {
            blocksStacked = false;
        } else {
            blocksStacked = true;
        }
        
        if (!touchingPlayer) {
            if (!blocksStacked) {
                if (x > other.x) {
                    x += global.playerSpeed;
                } else {
                    x -= global.playerSpeed;
                }
            }
        } else {
            if (x < other.x) {
                //Block touching player is to the left of other block
                otherCheckX = blockRight + other.blockWidth;
            } else {
                //Block touching player is to the right of other block
                otherCheckX = blockLeft - other.blockWidth;
            }
            otherCanMove = scr_can_move(otherCheckX, other.y, true, other.blockHeight);
            if (!otherCanMove) {
                if (!blocksStacked) {
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
}
