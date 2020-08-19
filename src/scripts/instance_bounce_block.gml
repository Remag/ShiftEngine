/// instance_bounce_block( blockObject = oBlock )
// Bounce off of block instances. Specific block objects may be passed as a target of bouncing.
// This script needs to be called every step for the bouncing effect.
var blockObject = oBlock;
if( argument_count > 0 ) {
    blockObject = argument0;
}

with( blockObject ) {
    solid = true;
}
move_bounce_solid( true );
with( blockObject ) {
    solid = false;
}
