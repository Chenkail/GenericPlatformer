/* argument0: Index of clicked button
 *   0: First page
 *   1: Previous page
 *   2: Next page
 *   3: Last page
 */

//Using integer index, perform button action
switch (argument0) {
    case 0:
        //Go to first page
        global.levelSelectPage = 1;
        break;
    case 1:
        //If not on first page, go to previous page
        if (global.levelSelectPage > 1) {
            global.levelSelectPage--;
        }
        break;
    case 2:
        //If not on last page, go to next page
        if (global.levelSelectPage < global.levelSelectPageCount) {
            global.levelSelectPage++;
        }
        break;
    case 3:
        //Go to last page
        global.levelSelectPage = global.levelSelectPageCount
        break;
}
