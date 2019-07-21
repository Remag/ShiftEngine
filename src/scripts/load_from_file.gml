/// load_from_file
// Create a loaded game from the file indicated by global.SaveIndex.

ds_map_destroy( global.SaveData );
global.SaveData = get_save_data( global.SaveIndex );
if( global.SaveData == -1 ) {
    new_game();
    return 0;
}

// Load deathtime.
var sd = global.SaveData[? "engine.death"];
var st = global.SaveData[? "engine.time"];
global.Death = sd;
global.Time = st;
update_title();

// Start the loaded game.
reload_game();
