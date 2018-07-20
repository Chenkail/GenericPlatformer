///Handle collisions with player

//Prevent falling through block if on top and set fall speed to 0
if (other.y < blockTop - playerHeight/2 + 10) {
    if (other.y > blockTop - playerHeight/2) {
        other.y = blockTop - playerHeight/2;
        global.playerFallSpeed = 0;
        other.vspeed = 0;
    }
} else {
    //Block should move when player pushes it from the side
    
    //Player is left of block pushing to the right
    if ((other.x < x) && (other.x > blockLeft - global.playerWidth/2)) {
        canGoRight = scr_can_move(blockRight + 1, y, true, blockHeight);
        if (canGoRight) {
            x += global.playerSpeed; //Move block to the right
        } else {
            
        }
    } else if ((other.x > x) && (other.x < blockRight + global.playerWidth/2)) {
        //Player is right of block pushing to the left
        canGoLeft = scr_can_move(blockLeft - 1, y, true, blockHeight);
        if (canGoLeft) {
            x -= global.playerSpeed; //Move block to the left
        } else {
            
        }
    }
}

