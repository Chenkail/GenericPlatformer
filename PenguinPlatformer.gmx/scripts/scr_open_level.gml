/* argument0: Level to open
 */

switch (argument0) {
    case 1:
        level = rm_level_1;
        break;
    case 2:
        level = rm_level_2;
        break;
    case 3:
        level = rm_level_3;
        break;
    case 4:
        level = rm_level_4;
        break;
    default:
        level = rm_level_select;
}

room_goto(level);
