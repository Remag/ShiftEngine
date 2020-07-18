/// instance_change_color( targetId, targetColor, duration, easingFunc = tween_linear )
var targetId = argument[0];
var targetColor = argument[1];
var duration = argument[2];

var easingFunc = tween_linear;
if( argument_count > 3 ) {
    easingFunc = argument[3];
}

with( targetId ) {
    var command = instance_create( x, y, oChangeColorCommand );
    command.TargetId = id;
    command.StartColor = image_blend;
    command.EndColor = targetColor;
    command.Step = 0;
    command.Duration = max( duration, 1 );
    command.Smoother = easingFunc;
    self.ShiftInternal_ColorChangeCommand = command;
}
