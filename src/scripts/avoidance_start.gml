/// avoidance_start( musicId )
var musicId = argument0;

var avoid = instance_create( 0, 0, oAvoidance );
var musicInstance = play_sound( musicId );
avoid.MusicInstance = musicInstance;
avoid.MusicId = musicId;
avoid.Duration = audio_sound_length( musicId ) * room_speed;

if( global.Debug ) {
    var slider = instance_create( 0, 0, oAvoidanceEditSlider );
    slider.Avoidance = avoid;
    var timings = instance_create( 0, 0, oAvoidanceTimingTable );
    timings.Avoidance = avoid;
    var debugInfo = instance_create( 0, 0, oAvoidanceDebugInfo );
    debugInfo.Avoidance = avoid;
    var hotkeys = instance_create( 0, 0, oAvoidanceHotkeys );
    hotkeys.Avoidance = avoid;
    
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
return avoid;
