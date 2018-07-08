/* argument0: Direction
 */

//Set animation
sprite_index = spr_player_back;

global.playerFallSpeed = 0;
vspeed = 0;
y += argument0 * global.playerClimbSpeed;
