room_goto(rm_level_select);
levelsPerPage =global.levelSelectColumns * global.levelSelectRows; 
global.levelSelectPage = int64(global.currentLevel/levelsPerPage) + 1;
