/// instance_inbounds_check( instanceId = id )
// Check if an instance lies within the current room and destroy it if it doesn't.

var instanceId = noone;
if( argument_count > 0 ) {
    instanceId = argument[0];
} else {
    instanceId = id;
}

with( instanceId ) {
    if( ( bbox_right < 0 && hspeed <= 0 )
        || ( bbox_left > room_width && hspeed >= 0 )
        || ( bbox_bottom < 0 && vspeed <= 0 )
        || ( bbox_top > room_height && vspeed >= 0 ) )
    {
        instance_destroy();
    }
}

