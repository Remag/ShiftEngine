/// instance_change_alpha( targetId, targetAlpha, duration, easingFunc = tween_linear )
var targetId = argument[0];
var targetAlpha = argument[1];
var duration = argument[2];

var easingFunc = tween_linear;
if( argument_count > 3 ) {
    easingFunc = argument[3];
}

with( targetId ) {
    var command = instance_create( x, y, oChangeAlphaCommand );
    command.TargetId = id;
    command.StartAlpha = image_alpha;
    command.DeltaAlpha = targetAlpha - image_alpha;
    command.Step = 0;
    command.Duration = duration;
    command.Smoother = easingFunc;
    self.ShiftInternal_AlphaChangeCommand = command;
}
