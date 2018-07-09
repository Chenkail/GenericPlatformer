///Handle collisions with player

//Prevent falling through block if on top and set fall speed to 0
if (other.y <= y - blockHeight/2) {
    if (other.y > y - blockHeight/2 - global.playerHeight/2) {
        other.y = y - blockHeight/2 - global.playerHeight/2;
        global.playerFallSpeed = 0;
    }
} else {
    //Block should move when player pushes it from the side
    
    //Player is left of block pushing to the right
    if ((other.x < x) && (other.x > x - blockWidth/2 - global.playerWidth/2)) {
        x += global.playerSpeed; //Move block to the right
        other.x = x - blockWidth/2 - global.playerWidth/2; //Move player back if intersecting
    }
     
    //Player is right of block pushing to the left
    if ((other.x > x) && (other.x < x + blockWidth/2 + global.playerWidth/2)) {
        x -= global.playerSpeed; //Move block to the left
        other.x = x + blockWidth/2 + global.playerWidth/2; //Move player back if intersecting
    }
}

