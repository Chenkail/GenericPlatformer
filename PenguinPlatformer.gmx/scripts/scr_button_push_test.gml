/* argument0: x coordinates of center
 * argument1: y coordinates of center
 * argument2: Width of button
 * argument3: Height of button
 */

buttonLeft = argument0 - argument2/2;
buttonTop = argument1 - argument3/2;
buttonRight = buttonLeft + argument2;
buttonBottom = buttonTop + argument3;

//Test if mouse is inside button rectangle
mouseOver = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), buttonLeft, buttonTop, buttonRight, buttonBottom);

//Button moused over vs pressed
if (!mouseOver)
    buttonPressed = false;
else
{
    if mouse_check_button_pressed(mb_left)
    {
        buttonPressed = true;
    }
    else if (mouse_check_button_released(mb_left) and buttonPressed)
    {
        //Go to level select
        scr_open_level_select();
    }
}


