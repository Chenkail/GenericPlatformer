/* argument0: Room to change to
 * argument1: Fade color
 */

var fade;

fade = instance_create(0, 0, obj_fade_to_room);
fade.newRoom = argument0;
fade.color = argument1;
