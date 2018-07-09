///Prevent player from colliding with blocks

//Prevent falling through block if on top and set fall speed to 0
if (other.y <= y - blockHeight/2) {
    if (other.y > y - blockHeight/2 - global.playerHeight/2) {
        other.y = y - blockHeight/2 - global.playerHeight/2;
        global.playerFallSpeed = 0;
    }
} else if ((other.y > y) && (other.y < y + blockHeight/2 + global.playerHeight/2)) {
        //Player is below block
        other.y = y + blockHeight/2 + global.playerHeight/2 - 3;
} else {
    leftCheck = false;
    rightCheck = false;
    if ((other.x < x) && (other.x > x - blockWidth/2 - global.playerWidth/2)) {
        leftCheck = true;
    }
    if ((other.x > x) && (other.x < x + blockWidth/2 + global.playerWidth/2)) {
        rightCheck = true;
    }
    if (leftCheck or rightCheck) {
        //Stop moving if running into a wall
        //Player is left of block
        if (rightCheck) {
            //Player is right of block
            other.x = x + blockWidth/2 + global.playerWidth/2;
        } else if (leftCheck) {
            other.x = x - blockWidth/2 - global.playerWidth/2;
        }
    }
}

