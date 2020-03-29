/// avoidance_start( musicId )
var musicId = argument0;

var avoid = instance_create( 0, 0, oAvoidance );
var musicInstance = play_sound( musicId );
avoid.MusicInstance = musicInstance;
avoid.MusicId = musicId;
avoid.Duration = audio_sound_length( musicId ) * room_speed;

if( global.Debug ) {
    instance_create( 0, 0, oAvoidanceEditSlider );
    instance_create( 0, 0, oAvoidanceTimingTable );
    instance_create( 0, 0, oAvoidanceDebugInfo );
    instance_create( 0, 0, oAvoidanceHotkeys );
    
    with( oAvoidancePersistentData ) {
        if( musicId != self.MusicId ) {
            instance_destroy();
        }
    }
    if( !instance_exists( oAvoidancePersistentData ) ) {
        var persistentData = instance_create( 0, 0, oAvoidancePersistentData );
        persistentData.MusicId = musicId;
    }
}
