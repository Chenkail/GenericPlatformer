ini_open("savedata.ini");
var level;
for (level = 1; level <= global.numberOfLevels; level++) {
    ini_write_real("levels", level, 1);
}
ini_close();
