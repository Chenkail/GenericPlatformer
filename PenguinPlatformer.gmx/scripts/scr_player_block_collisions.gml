///Prevent player from colliding with blocks

//Prevent falling through block if on top and set fall speed to 0
if ((other.y < y - blockSize/2) && (other.y > y - blockSize/2 - global.playerSize/2)) {
    other.y = y - blockSize/2 - global.playerSize/2;
    global.fallSpeed = 0;
} else {
    //Stop moving if running into a wall
    
    //Player is left of block
    if ((other.x < x) && (other.x > x - blockSize/2 - global.playerSize/2)) {
        other.x = x - blockSize/2 - global.playerSize/2
    }
    //Player is right of block
    if ((other.x > x) && (other.x < x + blockSize/2 + global.playerSize/2)) {
        other.x = x + blockSize/2 + global.playerSize/2
    }
}

