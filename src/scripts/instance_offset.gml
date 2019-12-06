/// instance_offset( targetId, deltaX, deltaY, duration, opt_easingFunc )
var targetId = argument[0];
var deltaX = argument[1];
var deltaY = argument[2];
var duration = argument[3];

var easingFunc = tween_sine_inout;
if( argument_count > 4 ) {
    easingFunc = argument[4];
}

with( targetId ) {
    var command = instance_create( x, y, oMoveCommand );
    command.TargetId = id;
    command.DeltaX = deltaX;
    command.DeltaY = deltaY;
    command.Step = 0;
    command.Duration = duration;
    command.Smoother = easingFunc;
    self.ShiftInternal_MoveCommand = command;
}
