/// tween_quad_out( begin, totalDelta, step, duration );
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

step /= duration;
return beginValue - totalDelta * step * ( step - 2 );
