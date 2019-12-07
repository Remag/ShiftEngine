/// check_common_hotkeys()

// Toggle fullscreen
if( keyboard_check_pressed( global.FullscreenKeyBind ) ) {
    window_set_fullscreen( !window_get_fullscreen() );
}
// Soft reset.
if( keyboard_check_pressed( global.GameResetKeyBind ) ) {
    with( all ) {
        // Destroy all instances.
        instance_destroy(); 
    }
    // Goto init.
    room_goto( rInit ); 
}
