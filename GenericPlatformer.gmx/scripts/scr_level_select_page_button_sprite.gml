/* argument0: Index of clicked button
 *   0: First page
 *   1: Previous page
 *   2: Next page
 *   3: Last page
 */

//Return sprite for given index
switch (argument0) {
    case 0:
        return spr_page_first;
    case 1:
        return spr_page_previous;
    case 2:
        return spr_page_next;
    case 3:
        return spr_page_last;
}

