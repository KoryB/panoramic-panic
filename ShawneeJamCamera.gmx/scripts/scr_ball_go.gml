/// scr_ball_zoom(goer)

var goer = argument0;

x = goer.x;
y = goer.y;

lastGoer = goer

var angle = goer.image_angle * pi/180

dx = goer.gspeed * cos(angle)
dy = -goer.gspeed * sin(angle)
