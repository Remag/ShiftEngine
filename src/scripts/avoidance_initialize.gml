var controller = argument0;
var music = argument1;

instance_create( 0, 0, controller );
var avoid = instance_create( 0, 0, oAvoidance );
var musicId = play_sound( music );
avoid.musicId = musicId;
avoid.musicObjectId = music;
avoid.controller = controller;
avoid.duration = audio_sound_length( musicId ) * 50;

if( global.Debug ) {
    instance_create( 0, 0, oAvoidanceEditSlider );
    instance_create( 0, 0, oAvoidanceTimingTable );
    instance_create( 0, 0, oAvoidanceDebugInfo );
}
