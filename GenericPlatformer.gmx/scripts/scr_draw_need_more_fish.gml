/* argument0: x coordinate of door's centerr
 * argument1: y coordinate of door's center
 */

var needMoreFish;
messageX = argument0;
messageY = argument1 - needMoreFishHeight;

needMoreFish = instance_create(messageX, messageY, obj_need_more_fish);
