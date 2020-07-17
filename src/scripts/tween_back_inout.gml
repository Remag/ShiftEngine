/// tween_back_inout( beginValue, totalDelta, step, duration );
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

var s = 1.70158 * 1.525;
var tRatio = step / duration;

if( tRatio < 0.5 ) {
    return 2 * tRatio * tRatio * ( ( s + 1 ) * 2 * tRatio - s );
} else {
    tRatio -= 1;
    return 2 * tRatio * tRatio * ( ( s + 1 ) * 2 * tRatio + s + 2 );
}

