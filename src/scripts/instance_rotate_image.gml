/// instance_rotate_image( targetId, targetAngle, duration, easingFunc = tween_sine_inout )
// Change the image angle of an instance or all instances of an object.
var targetId = argument[0];
var targetAngle = argument[1];
var duration = argument[2];

var easingFunc = tween_sine_inout;
if( argument_count > 3 ) {
    easingFunc = argument[3];
}

with( targetId ) {
    var command = instance_create( x, y, oRotateImageCommand );
    command.TargetId = id;
    command.StartDirection = image_angle;
    command.DeltaDirection = targetAngle - image_angle;
    command.Step = 0;
    command.Duration = max( duration, 1 );
    command.Smoother = easingFunc;
    self.ShiftInternal_RotateImageCommand = command;
}
