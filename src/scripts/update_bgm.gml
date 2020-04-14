/// update_bgm( soundResource )
// Updates background music.
// Pass "noone" as music to stop the current track.
var soundFile = argument0;
if( soundFile != noone ) {   
    var inst = audio_play_sound( soundFile, 0, true );
    audio_stop_sound( global.InstanceBGM );
    global.CurrentBGM = soundFile;
    global.InstanceBGM = inst;
    update_music_volume();
} else {
    audio_stop_sound( global.InstanceBGM );
    global.CurrentBGM = noone;
}
return true; 
