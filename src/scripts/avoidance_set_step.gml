var newStep = argument0;
with( oAvoidanceEntity ) {
    instance_destroy();
}

if( !audio_is_playing( oAvoidance.musicId ) ) {
    oAvoidance.musicId = play_sound( oAvoidance.musicObjectId );
}
oAvoidance.step = newStep + 1;
