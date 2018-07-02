//Change player's walking speed if standing on block
if (other.y <= y - blockSize/2 - global.playerSize/2) {
    global.blockSpeedModifier = blockSpeedModifier;
}
