/// check_common_hotkeys()

// Exit game.
if( keyboard_check_pressed( global.ExitKeyBind ) ) {
    game_end();
}

// Toggle fullscreen
if( keyboard_check_pressed( global.FullscreenKeyBind ) ) {
    window_set_fullscreen( !window_get_fullscreen() );
}
