/// check_common_hotkeys()

// Toggle fullscreen
if( button_check_pressed( global.FullscreenKeyBind ) ) {
    window_set_fullscreen( !window_get_fullscreen() );
}
// Soft reset.
if( button_check_pressed( global.GameResetKeyBind ) ) {
    with( all ) {
        // Destroy all instances.
        instance_destroy(); 
    }
    // Mute sound.
    audio_stop_all();
    // Goto init.
    room_goto( rInit ); 
}
