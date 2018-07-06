/* argument0: Level # to check
 */

levelChoice = argument0;

ini_open("savedata.ini");
levelComplete = ini_read_real("levels", levelChoice, 0);
ini_close();

//If level has been completed, return true, otherwise, return false
if (levelComplete == 1) {
    return true;
} else {
    return false;
}

return levelUnlocked;
