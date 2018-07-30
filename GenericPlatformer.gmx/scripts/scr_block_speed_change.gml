//Change player's walking speed if standing on block
if ((other.y <= y - blockHeight/2 - global.playerHeight/2) && ((other.x >= x - blockWidth/2) && (other.x < x + blockWidth/2))) {
    global.blockSpeedModifier = blockSpeedModifier;
    global.blockImageSpeedModifier = blockImageSpeedModifier;
}
