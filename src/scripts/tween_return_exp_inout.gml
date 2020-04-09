/// tween_return_exp_inout( beginValue, totalDelta, step, duration );
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

var hDuration = duration / 2;
if( step <= hDuration ) {
    return tween_exp_inout( beginValue, totalDelta, step, hDuration );
} else {
    return tween_exp_inout( beginValue + totalDelta, -totalDelta, step - hDuration, hDuration );
}
