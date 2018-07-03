//Change player's walking speed if standing on block
if ((other.y <= y - blockSize/2 - global.playerSize/2) && ((other.x > x - blockSize/2) && (other.x < x + blockSize/2))) {
    global.blockSpeedModifier = blockSpeedModifier;
    global.blockImageSpeedModifier = blockImageSpeedModifier;
}
