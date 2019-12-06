/// create_save()
// Fills up savefile with default values.

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


