/* argument0: Level to open
 */

switch (argument0) {
    case 1:
        level = rm_level1;
        break;
    case 2:
        level = rm_level2;
        break;
    case 3:
        level = rm_level3;
        break;
    case 4:
        level = rm_level4;
        break;
    default:
        level = rm_main_menu;
}

room_goto(level);
