/// play_sound( soundResouce )
// Play a soundfile. Volume is affected by globals & editor volume. 
// Returns the sound instance.

var vol = audio_sound_get_gain( argument0 ) * global.MasterVolume;
var inst = audio_play_sound( argument0, 0, false );
audio_sound_gain( inst, vol, 0 );
return inst;

