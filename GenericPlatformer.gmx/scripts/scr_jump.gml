if (alarm_get(0) < 0) {
    global.canJump = true;
}

//Test if player is midair
if (place_empty(x, y + global.jumpCheckConstant)) {
    global.canJump = false;
}

if (global.canJump) {
    global.playerJumpSpeed = sqrt(2 * global.gravity * global.playerJumpHeight);
    vspeed = -global.playerJumpSpeed;
    /* Disable jump for time it takes to fall back
     * down to the level the jump started at
     */
    global.canJump = false;
    alarm_set(0, global.playerJumpTime * global.stepsPerSecond);
}
