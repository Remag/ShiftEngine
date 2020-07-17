/// view_rotate( targetAngle, duration, easingFunc = tween_sine_inout )
var targetAngle = argument[0];
var duration = argument[1];
var smoother;
if( argument_count > 2 ) {
    smoother = argument[2]
} else {
    smoother = tween_sine_inout;
}

var command = instance_create( 0, 0, oViewRotateCommand );
command.StartAngle = view_angle[0];
command.AngleDelta = targetAngle - command.StartAngle;
command.Step = 0;
command.Duration = duration;
command.Smoother = smoother;

