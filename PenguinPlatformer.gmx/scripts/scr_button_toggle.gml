///Set button boolean values
/* argument0: Button index
 * argument1: Boolean value to set button to
 */

toggle = argument1;
switch (argument0) {
    case 1:
        global.button1Toggle = toggle;
        break;
    case 2:
        global.button2Toggle = toggle;
        break;
    case 3:
        global.button3Toggle = toggle;
        break;
    case 4:
        global.button4Toggle = toggle;
        break;
    case 5:
        global.button5Toggle = toggle;
        break;
}

