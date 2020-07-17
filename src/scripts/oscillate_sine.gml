/// oscillate_sine( minValue, maxValue, step, period );
var minValue = argument0;
var maxValue = argument1;
var step = argument2;
var period = argument3;

var relStep = step % period;
return tween_return_sine_inout( minValue, maxValue - minValue, relStep, period );
