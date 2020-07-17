/// room_set_infinite_jump( isSet )
// Toggles the unlimited ability to air jump in the current room.
// The effect lasts until game restart or room end.

var isSet = argument0;

with( oInfiniteJump ) {
    instance_destroy();
}
if( isSet ) {
    instance_create( 0, 0, oInfiniteJump );
}
