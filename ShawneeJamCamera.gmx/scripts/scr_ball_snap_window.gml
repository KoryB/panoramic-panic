/// scr_window_snap_object()

var w = bbox_right - bbox_left;
var h = bbox_bottom - bbox_top;

newx = clamp(x, obj_WindowManager.wx1 + w/2, obj_WindowManager.wx2 - w/2 + 1);
newy = clamp(y, obj_WindowManager.wy1 + h/2, obj_WindowManager.wy2 - h/2 + 1);
