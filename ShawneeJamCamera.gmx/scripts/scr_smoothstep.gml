/// scr_smoothstep(t, from, to)

var t = argument0;
var from = argument1;
var to = argument2;

var t = clamp(t, 0.0, 1.0);

t =  t * t * t * (t * (t * 6 - 15) + 10)

return t * to + (1 - t) * from
