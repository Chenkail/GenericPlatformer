///Prevent player from colliding with blocks

//Prevent falling through block if on top
if ((other.y < y - blockSize/2) && (other.y > y - blockSize/2 - global.playerSize/2)) {
    other.y = y - blockSize/2 - global.playerSize/2;
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

