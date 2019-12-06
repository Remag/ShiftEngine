/// tween_quad_inout( begin, totalDelta, step, duration );
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

step /= duration / 2;
if( step < 1 ) {
    return beginValue + totalDelta * step * step / 2;
} else {
    return beginValue - totalDelta * ( ( step - 1 ) * ( step - 2 ) - 1 ) / 2;
}
