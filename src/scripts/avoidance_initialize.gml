var controller = argument0;
var music = argument1;

instance_create( 0, 0, controller );
var avoid = instance_create( 0, 0, oAvoidance );
var musicId = play_sound( music );
avoid.MusicId = musicId;
avoid.MusicObjectId = music;
avoid.Controller = controller;
avoid.Duration = audio_sound_length( musicId ) * 50;

if( global.Debug ) {
    instance_create( 0, 0, oAvoidanceEditSlider );
    instance_create( 0, 0, oAvoidanceTimingTable );
    instance_create( 0, 0, oAvoidanceDebugInfo );
    instance_create( 0, 0, oAvoidanceHotkeys );
    
    with( oAvoidancePersistentData ) {
        if( controller != self.Controller ) {
            instance_destroy();
        }
    }
    if( !instance_exists( oAvoidancePersistentData ) ) {
        var persistentData = instance_create( 0, 0, oAvoidancePersistentData );
        persistentData.Controller = controller;
    }
}
