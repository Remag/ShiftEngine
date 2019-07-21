/// create_save()
// Fills up savefile with default values
// Value "freshSave" determines if you actually saved in it once.

global.SaveData = ds_map_create();
ds_map_add( global.SaveData, "engine.x", noone );
ds_map_add( global.SaveData, "engine.y", noone );
ds_map_add( global.SaveData, "engine.dir", noone );
ds_map_add( global.SaveData, "engine.time", 0 );
ds_map_add( global.SaveData, "engine.death", 0 );
ds_map_add( global.SaveData, "engine.room", 0 );
ds_map_add( global.SaveData, "engine.grav", 1 );
ds_map_add( global.SaveData, "engine.freshSave", true );
ds_map_add( global.SaveData, "engine.djump", true );

// If you for whatever reason start the game in the air, set djump to false here
// (if you want to make the player not be able to djump that is)

