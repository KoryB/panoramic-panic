/// scr_window_object_outside(id)

var a_id = argument0

var wx = window_get_x()
var wy = window_get_y()

var wx2 = wx + window_get_width()
var wy2 = wy + window_get_height()

return !collision_rectangle(wx, wy, wx2, wy2, a_id, false, false);
