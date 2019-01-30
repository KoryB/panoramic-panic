/// scr_window_object_outside(x1, y1, x2, y2)

var x1 = argument0;
var y1 = argument1;
var x2 = argument2; 
var y2 = argument3;

var result = 0;

with (obj_WindowManager) 
{
    result = rectangle_in_rectangle(x1, y1, x2, y2, wx1, wy1, wx2, wy2);
}

return result != 1;
