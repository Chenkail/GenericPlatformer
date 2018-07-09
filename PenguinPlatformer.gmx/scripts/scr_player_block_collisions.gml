///Prevent falling through block if on top and set fall speed to 0
if (other.y <= y - blockHeight/2) {
    if (other.y > y - blockHeight/2 - global.playerHeight/2) {
        other.y = y - blockHeight/2 - global.playerHeight/2;
        global.playerFallSpeed = 0;
    }
}
