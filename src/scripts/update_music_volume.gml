if( global.CurrentBGM != noone ) {
    var vol = audio_sound_get_gain( soundFile  ) * global.MusicVolume * global.MasterVolume;
    if( global.MusicMuted ) {
        vol = 0;
    }
    audio_sound_gain( global.InstnaceBGM, vol, 0 );    
}
