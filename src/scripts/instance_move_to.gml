/// instance_move_to( targetId, targetX, targetY, duration, easingFunc = tween_sine_inout )
// Move an instance or all instances of an object to a given position.
// New instance commands override existing ones.
var targetId = argument[0];
var targetX = argument[1];
var targetY = argument[2];
var duration = argument[3];

var easingFunc = tween_sine_inout;
if( argument_count > 4 ) {
    easingFunc = argument[4];
}

with( targetId ) {
    var command = instance_create( x, y, oMoveCommand );
    command.TargetId = id;
    command.DeltaX = targetX - x;
    command.DeltaY = targetY - y;
    command.Step = 0;
    command.Duration = max( duration, 1 );
    command.Smoother = easingFunc;
    self.ShiftInternal_MoveCommand = command;
}
