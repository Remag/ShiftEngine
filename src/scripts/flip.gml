/// flip()
// Flips player gravity.

with( oPlayer ) {
    GravityDir = -GravityDir;
    if( global.GiveDjumpOnFlip ) {
        Djump = true;
    }
    vspeed = 0;
    Jump1 = abs( Jump1 ) * GravityDir;
    Jump2 = abs( Jump2 ) * GravityDir;
    gravity = abs( gravity ) * GravityDir;
    set_mask();
    
    // Prevent getting stuck on flip, move out of blocks
    while( instance_place( x, y, oBlock ) != noone ) {
        y += GravityDir;
    }
}

