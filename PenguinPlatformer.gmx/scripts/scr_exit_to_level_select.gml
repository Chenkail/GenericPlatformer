levelsPerPage = global.levelSelectColumns * global.levelSelectRows;

levelSelectPage = int64(global.currentLevel/levelsPerPage);
if (global.currentLevel mod levelsPerPage != 0) {
    levelSelectPage++;
}
global.levelSelectPage = levelSelectPage;
room_goto(rm_level_select);

