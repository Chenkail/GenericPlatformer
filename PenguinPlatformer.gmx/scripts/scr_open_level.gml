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
    case 5:
        level = rm_level_5;
        break;
    case 6:
        level = rm_level_6;
        break;
    case 7:
        level = rm_level_7;
        break;
    case 8:
        level = rm_level_8;
        break;

    default:
        level = rm_level_select;
}

room_goto(level);
