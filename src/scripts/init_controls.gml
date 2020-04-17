// Keybinds
global.LeftKeyBind = register_keybind( "Left", vk_left ); // Movement (Left)
global.RightKeyBind = register_keybind( "Right", vk_right ); // Movement (Right)
global.JumpKeyBind = register_keybind( "Jump", vk_shift ); // Player Jump
global.ShootKeyBind = register_keybind( "Shoot", ord( "Z" ) ); // Player Shoot
global.RestartKeyBind = register_keybind( "Restart", ord( "R" ) ); // Restart (after dying)
global.PauseKeyBind = register_system_keybind( ord( "P" ) ) ; // Pause [UNIMPLEMENTED]
global.SaveKeyBind = register_system_keybind( ord( "S" ) ); // Save button if global.SSaves is on
global.SuicideKeyBind = register_system_keybind( ord( "Q" ) ); // Suicide button (req. global.canSuicide)
global.ExitKeyBind = register_system_keybind( vk_escape ); // Exit game
global.GameResetKeyBind = register_system_keybind( vk_f2 ); // Soft reset game
global.FullscreenKeyBind = register_system_keybind( vk_f4 ); // Toggle fullscreen
global.NudgeLeftKeyBind = register_system_keybind( ord( "A" ) ); // Nudge kid left by 1 pixel (AD align must be on).
global.NudgeRightKeyBind = register_system_keybind( ord( "D" ) ); // Nudge kid left by 1 pixel (AD align must be on).

// UI keybinds.
global.MenuSelectKeyBind = register_system_keybind( vk_shift );
global.MenuSelectSecondKeyBind = register_system_keybind( ord( "Z" ) );
global.MenuBackKeyBind = register_system_keybind( vk_escape );
global.MenuNextKeyBind = register_system_keybind( vk_down );
global.MenuPreviousKeyBind = register_system_keybind( vk_up );
global.MenuIncreaseKeyBind = register_system_keybind( vk_right );
global.MenuDecreaseKeyBind = register_system_keybind( vk_left );

// Debug keybinds.
global.GodDebugKeyBind = register_system_keybind( vk_home ); // Godmode Toggle
global.ToggleUiDebugKeyBind = register_system_keybind( vk_end ); // Debug UI Toggle
global.SaveDebugKeyBind = register_system_keybind( vk_insert ); // Save at current position
global.FlipDebugKeyBind = register_system_keybind( ord( "G" ) ); // Flip gravity
global.VAlignDebugKeyBind = register_system_keybind( ord( "V" ) ); // Set V-Align (displays prompt)
global.HitboxDebugKeyBind = register_system_keybind( ord( "H" ) ); // Toggle hitbox display
global.DragDebugKeyBind = register_system_keybind( vk_tab ); // Hold to snap player to mouse x-y
global.PrevRoomDebugKeyBind = register_system_keybind( vk_pagedown ); // Go back a room (if it exists & not rInit)
global.NextRoomDebugKeyBind = register_system_keybind( vk_pageup ); // Go forwards a room (if it exists)
global.ShowTriggersDebugKeyBind = register_system_keybind( ord( "T" ) ); // Toggle trigger display;

global.AvoidancePause = register_system_keybind( vk_enter );
global.AvoidanceAddTiming = register_system_keybind( vk_space );

