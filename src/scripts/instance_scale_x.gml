/// instance_scale_x( targetId, targetScale, duration, easingFunc = tween_sine_inout )
var targetId = argument[0];
var targetScale = argument[1];
var duration = argument[2];

var easingFunc = tween_sine_inout;
if( argument_count > 3 ) {
    easingFunc = argument[3];
}

with( targetId ) {
    var command = instance_create( x, y, oScaleXCommand );
    command.TargetId = id;
    command.StartScaleX = image_xscale;
    command.ScaleDeltaX = targetScale - image_xscale;
    command.Step = 0;
    command.Duration = duration;
    command.Smoother = easingFunc;
    self.ShiftInternal_XScaleChangeCommand = command;
}
