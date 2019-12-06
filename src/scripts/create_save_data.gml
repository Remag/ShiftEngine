/// create_save_data()
// Create a ds_map containing the save data for a new game.
// The map must be destroyed by calling ds_map_destroy.

var result = ds_map_create();
ds_map_add( result, "engine.x", noone );
ds_map_add( result, "engine.y", noone );
ds_map_add( result, "engine.dir", noone );
ds_map_add( result, "engine.time", 0 );
ds_map_add( result, "engine.death", 0 );
ds_map_add( result, "engine.room", global.StartRoom );
ds_map_add( result, "engine.grav", noone );
ds_map_add( result, "engine.freshSave", true );
ds_map_add( result, "engine.djump", noone );
return result;
