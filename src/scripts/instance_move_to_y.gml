/// instance_move_to_y( targetId, targetY, duration, easingFunc = tween_sine_inout )
// Move an instance or all instances of an object to a given Y position.
// New instance commands override existing ones.
var targetId = argument[0];
var targetY = argument[1];
var duration = argument[2];

var easingFunc = tween_sine_inout;
if( argument_count > 3 ) {
    easingFunc = argument[3];
}

with( targetId ) {
    var command = instance_create( x, y, oMoveYCommand );
    command.TargetId = id;
    command.DeltaY = targetY - y;
    command.Step = 0;
    command.Duration = max( duration, 1 );
    command.Smoother = easingFunc;
    self.ShiftInternal_MoveYCommand = command;
}
