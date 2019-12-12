// Keybinds
global.LeftKeyBind = vk_left; // Movement (Left)
global.RightKeyBind = vk_right; // Movement (Right)
global.JumpKeyBind = vk_shift; // Player Jump
global.ShootKeyBind = ord( "Z" ); // Player Shoot
global.RestartKeyBind = ord( "R" ); // Restart (after dying)
global.PauseKeyBind = ord( "P" ); // Pause [UNIMPLEMENTED]
global.SaveKeyBind = ord( "S" ); // Save button if global.SSaves is on
global.SuicideKeyBind = ord( "Q" ); // Suicide button (req. global.canSuicide)
global.ExitKeyBind = vk_escape; // Exit game
global.GameResetKeyBind = vk_f2; // Soft reset game
global.FullscreenKeyBind = vk_f4; // Toggle fullscreen

// UI keybinds.
global.MenuSelectKeyBind = vk_shift;
global.MenuSelectSecondKeyBind = ord( "Z" );
global.MenuBackKeyBind = vk_escape;
global.MenuNextKeyBind = vk_down;
global.MenuPreviousKeyBind = vk_up;
global.MenuIncreaseKeyBind = vk_right;
global.MenuDecreaseKeyBind = vk_left;

// Debug keybinds.
global.GodDebugKeyBind = vk_home; // Godmode Toggle
global.ToggleUiDebugKeyBind = vk_end; // Debug UI Toggle
global.SaveDebugKeyBind = vk_insert; // Save at current position
global.FlipDebugKeyBind = ord( "G" ); // Flip gravity
global.FpsDebugKeyBind = ord( "F" ); // Set FPS (displays prompt)
global.VAlignDebugKeyBind = ord( "V" ); // Set V-Align (displays prompt)
global.HitboxDebugKeyBind = ord( "H" ); // Toggle hitbox display
global.DragDebugKeyBind = vk_tab; // Hold to snap player to mouse x-y
global.DragMouseDebugKeyBind = mb_middle; // Above, but instead it's a mouse button
global.PrevRoomDebugKeyBind = vk_pagedown; // Go back a room (if it exists & not rInit)
global.NextRoomDebugKeyBind = vk_pageup; // Go forwards a room (if it exists)
global.ShowTriggersDebugKeyBind = ord( "T" ); // Toggle trigger display;

global.AvoidancePause = vk_enter;
global.AvoidanceAddTiming = vk_space;

