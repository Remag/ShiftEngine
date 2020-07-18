global.RegisteredKeybindCount = 0;
global.InputKeyCount = 0;
ini_open( "settings.ini" );
init_settings();
init_controls();
ini_close();
load_metadata();

/// [Player]
global.CanPause = true; // Completely unimplemented (so far!)
global.SaveHop = true; // Whether you get air jumps on load (otherwise it's in your save)
global.AdTrick = true; // Determines if you can use the A<>D trick
global.CanSuicide = false; // Determines if you can kill yourself with SuicideKeyBind
global.DrawHitbox = false; // Turn this on to reveal your hitbox
global.GiveAirJumpsOnFlip = true; // Determines if the player gets the air jumps back on gravity flip
global.LrAnywhere = false; // Check for left/right keys when tabbed out because old shitty gm8 engines
global.BulletCap = 5; // Maximum bullets in a room at any given time
global.WrapPlayerX = false; // Teleport the player to an opposing edge (X-Axis)
global.WrapPlayerY = false; // Teleport the player to an opposing edge (Y-Axis)
global.KillPlayerOnEdge = true; // The standard thing.
global.TimeWhileDead = false; // Determines if time should advance while the player is dead
global.ShowVineParticles = true; // Determines if decorative particles spawn during player slide animation.

/// [Internal]
global.Autosave = false; // Makes the player save(true) on next creation
global.Difficulty = 0; // Not really implemented - only used in saves
global.IsPaused = false; // Determines if the game is paused
global.TimeTicking = true; // Determines if time should be incrementing
global.WindowTitle = "ShiftEngine Game";
// Death and time information format - %T - time, %D - deaths
global.DeathtimeTitleFormat = " - Deaths: %D | Time: %T"; // Parsed in update_title automatically

/// [Avoidance]
global.ActiveAvoidance = noone; // Instance id of the last created avoidance object.

/// [World]
global.SSaves = false; // S key for saving instead of shooting/touchshooting
global.StartRoom = rNeedleDemo; // The first room when a new game is started

/// [Mixer]
global.CurrentBGM = noone; // Current BGM (set by update_bgm)
global.InstanceBGM = noone; // Instance of the current BGM (set by update_bgm)

/// [Debug]
global.Debug = true; // Enables cheats & debug hotkeys
global.DebugGui = true; // Enables the drawing of the debug GUI
global.DebugShowTriggers = false; // Shows all instances of oTrigger
global.God = false; // Invincibility (can also be toggled via debug hotkey k_debug_god)
global.DebugInfiniteJump = false; // Unlimited air jumping

randomize();
