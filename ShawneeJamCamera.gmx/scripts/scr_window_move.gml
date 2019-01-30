/// scr_window_move(dx, dy)

var dx = argument0;
var dy = argument1;

var wx = window_get_x();
var wy = window_get_y();

window_set_position(wx + dx, wy + dy);


wx1 = window_get_x()
wy1 = window_get_y()

wx2 = wx1 + window_get_width()
wy2 = wy1 + window_get_height()

wdx = dx;
wdy = dy;

scr_window_update_view();
