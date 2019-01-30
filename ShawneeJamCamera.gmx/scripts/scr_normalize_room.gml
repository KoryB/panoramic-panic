/// scr_normalize_room()

var rw = room_width;
var rh = room_height;

var sw = display_get_width();
var sh = display_get_height();

var deltax = sw/2 - rw/2;
var deltay = sh/2 - rh/2;

with (all)
{
    x += deltax;
    y += deltay;
    
    xstart = x;
    ystart = y;
}

show_debug_message(instance_count);
