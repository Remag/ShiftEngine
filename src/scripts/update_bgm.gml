/// update_bgm( soundResource )
// Updates background music.
// Pass "noone" as music to stop the current track.
var soundResource = argument0;
if( soundResource == noone ) {   
    audio_stop_sound( global.InstanceBGM );
    global.CurrentBGM = noone;
    global.InstanceBGM = noone;
} else if( soundResource != global.CurrentBGM ) {
    audio_stop_sound( global.InstanceBGM );
    var inst = audio_play_sound( soundResource, 0, true );
    global.CurrentBGM = soundResource;
    global.InstanceBGM = inst;
    update_music_volume();
} else if( global.CurrentBGM != noone ) {
    audio_resume_sound( global.InstanceBGM );
    update_music_volume();
}
return true; 
