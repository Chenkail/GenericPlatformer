///Prevent falling through block if on top and set fall speed to 0
if (other.y <= y - blockHeight/2) {
    if (other.y > y - blockHeight/2 - playerHeight/2) and (other.x > blockLeft) and (other.x < blockRight) {
        other.y = y - blockHeight/2 - playerHeight/2;
        global.playerFallSpeed = 0;
    }
} else if (other.y - playerHeight/2 > y + blockHeight/2) and (other.x < x + blockWidth/2) and (other.x > x - blockWidth/2) {
    //Stop player if hitting ceiling
    other.y = y + blockHeight/2 + playerHeight/2;
    other.vspeed = 0;
    global.playerFallSpeed = 0;
}

