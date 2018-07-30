/* argument0: Level # to check
 */

levelChoice = argument0;

ini_open("savedata.ini");
previousLevelComplete = ini_read_real("levels", levelChoice - 1, 0);
ini_close();

levelLocked = true;
if ((levelChoice == 1) or (previousLevelComplete == 1)) {
    //Can open level if it's the first level or if the previous level has been completed
    levelLocked = false;
}

return levelLocked;
