/// avoidance_start( musicId )
// Initialize an avoidance fight. A given music track will be played and synchronized with room FPS.
var musicId = argument0;

update_bgm( noone );
var avoid = instance_create( 0, 0, oAvoidance );
avoid.PreviousActiveAvoidance = global.ActiveAvoidance;
global.ActiveAvoidance = avoid;
var musicInstance = play_sound( musicId );
avoid.MusicInstance = musicInstance;
avoid.MusicId = musicId;
avoid.Duration = audio_sound_length( musicId ) * room_speed;
avoid.RoomList[0] = room;
avoid.RoomCount = 1;

if( global.Debug ) {
    // Debug UI.
    if( !instance_exists( oAvoidanceEditSlider ) ) {
        instance_create( 0, 0, oAvoidanceEditSlider );
        instance_create( 0, 0, oAvoidanceTimingTable );
        instance_create( 0, 0, oAvoidanceDebugInfo );
        instance_create( 0, 0, oAvoidanceHotkeys );
    }
    
    // Fetch start timing from file.
    if( file_exists( "Debug_AvoidanceTiming" ) ) {
        var timingFile = file_text_open_read( "Debug_AvoidanceTiming" );
        var fileId = file_text_read_real( timingFile );
        if( fileId == musicId ) {
            var fileTiming = file_text_read_real( timingFile );
            avoid.Step = fileTiming;
        }
        file_text_close( timingFile );
    }
    
    // Load a timing table.
    var persistentDataExists = false;
    with( oAvoidancePersistentData ) {
        if( musicId == self.MusicId ) {
            persistentDataExists = true;
            break;
        }
    }
    if( !persistentDataExists ) {
        var persistentData = instance_create( 0, 0, oAvoidancePersistentData );
        persistentData.MusicId = musicId;
    }
}
return avoid;
