/// tween_quad_inout( beginValue, totalDelta, step, duration );
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

step /= duration / 2;
var hDelta = totalDelta / 2;
if( step < 1 ) {
    return beginValue + hDelta * step * step;
}
return beginValue - hDelta * ( step * ( step - 2 ) - 1 );
