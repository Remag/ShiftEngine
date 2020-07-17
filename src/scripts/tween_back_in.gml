/// tween_back_in( beginValue, totalDelta, step, duration );
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

var s = 1.70158;
var tRatio = step / duration;
return beginValue + totalDelta * tRatio * tRatio * ( ( s + 1 ) * tRatio - s );
