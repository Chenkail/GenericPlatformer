///Prevent player from colliding with blocks

//Prevent falling through block if on top and set fall speed to 0
if (other.y <= y - blockHeight/2) {
    if (other.y > y - blockHeight/2 - global.playerHeight/2) {
        other.y = y - blockHeight/2 - global.playerHeight/2;
        global.playerFallSpeed = 0;
    }
} else {
    //Stop moving if running into a wall
    playerLeftCheck = false;
    playerRightCheck = false;
    if ((other.x < x) && (other.x > x - blockWidth/2 - global.playerWidth/2)) {
        playerLeftCheck = true;
    } else if ((other.x > x) && (other.x < x + blockWidth/2 + global.playerWidth/2)) {
        playerRightCheck = true;
    }
    
    if (playerLeftCheck) {
        //Player is left of block
        other.x = x - blockWidth/2 - global.playerWidth/2;
    } else if (playerRightCheck) {
        //Player is right of block
        other.x = x + blockWidth/2 + global.playerWidth/2;
    } else {
        
    }
}

