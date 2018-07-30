/* argument0: Current level #
 */

switch (argument0) {
    case 1:
        return global.hintBoxText1;
        break;
    case 2:
        return global.hintBoxText2;
        break;
    case 3:
        return global.hintBoxText3;
        break;
    case 4:
        return global.hintBoxText4;
        break;
    case 5:
        return global.hintBoxText5;
        break;
    case 6:
        return global.hintBoxText6;
        break;
    case 7:
        return global.hintBoxText7;
        break;
    case 8:
        return global.hintBoxText8;
        break;
    default:
        return "This text has not been added to scr_get_hint_text yet.";
}
