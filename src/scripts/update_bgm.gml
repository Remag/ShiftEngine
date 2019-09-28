/// update_bgm(SOUND soundFile)
// Updates background music. Only restarts if the song changes.
// Pass "noone" as music to stop current track.

if( argument0 ) {
    var vol = audio_sound_get_gain( argument0  ) * global.MusicVolume * global.MasterVolume;
    var inst = audio_play_sound( argument0, 0, true );
    audio_stop_sound( global.InstanceBGM );
    audio_sound_gain( inst, vol, 0 );
    global.CurrentBGM = argument0;
    global.InstanceBGM = inst;
} else {
    audio_stop_sound( global.InstanceBGM );
    global.CurrentBGM = noone;
}

