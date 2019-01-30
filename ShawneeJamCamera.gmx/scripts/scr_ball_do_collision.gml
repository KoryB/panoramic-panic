/// scr_ball_do_collision()

var dx = newx - x;
var dy = newy - y;

var sign_dx = sign(dx);
var sign_dy = sign(dy);

var x_accum = 0;
var y_accum = 0;

//show_debug_message("dx: " + string(dx) + ", dy: " + string(dy))

if (abs(dx) >= 1)
{
    while (abs(x_accum) < abs(dx))
    {
        if (place_meeting(x + x_accum, y, obj_Wall) || (state != "zooming" and place_meeting(x + x_accum, y, obj_Gate)))
        {
            x_accum -= sign_dx;
            audio_play_sound(s_hit, 7, false);
            break;
        }
        
        x_accum += sign_dx;
    }
    
    x += x_accum;
}

if (abs(dy) >= 1)
{
    while (abs(y_accum) < abs(dy))
    {
        if (place_meeting(x, y + y_accum, obj_Wall) || (state != "zooming" and place_meeting(x, y + y_accum, obj_Gate)))
        {
            y_accum -= sign_dy;
            audio_play_sound(s_hit, 7, false);
            break;
        }
        
        y_accum += sign_dy;
    }
    
    y += y_accum
}
