/// tween_back_out( beginValue, totalDelta, step, duration );
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

var s = 1.70158;
var tRatio = step / duration - 1;

return beginValue + totalDelta * ( 1 + tRatio * tRatio * ( ( s + 1 ) * tRatio + s ) );

