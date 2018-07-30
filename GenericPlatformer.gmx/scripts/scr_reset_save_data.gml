ini_open("savedata.ini");
for (var level = 1; level <= global.numberOfLevels; level++) {
    ini_write_real("levels", level, 0);
}
ini_close();

