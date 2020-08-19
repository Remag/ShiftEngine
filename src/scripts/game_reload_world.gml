/// game_reload_world()
// Load the game with the world's SaveData. Returns if loading was a success.

var sx = oWorld.SaveData[? "engine.x"];
var sy = oWorld.SaveData[? "engine.y"];
var sr = oWorld.SaveData[? "engine.room"];
var sd = oWorld.SaveData[? "engine.dir"];
var sg = oWorld.SaveData[? "engine.grav"];
var smaj = oWorld.SaveData[? "engine.maxairjump"];
var saj = oWorld.SaveData[? "engine.curairjump"];
   
if( room_exists( sr ) ) {
    cleanup_game();
    if( sx != noone && sy != noone && sd != noone && sg != noone && saj != noone ) {
        // Schedule the player for loading in the next room.
        var loadData = instance_create( sx, sy, oPlayerLoadData );
        loadData.Dir = sd;
        loadData.MaxAirJumpCount = smaj;
        if( global.SaveHop ) {
            loadData.CurrentAirJumpCount = smaj;
        } else {
            loadData.CurrentAirJumpCount = saj;
        }
        loadData.GravityDir = sg;
    }
    room_goto( sr );
        
    // Logging load calls.
    show_debug_message( "Loaded successfully @ " + room_get_name( sr )
        + " (" + string( sx ) + ", " + string( sy ) + ")" );
    return true;
} else {
    // Nonexistent room in a save file, throw an error.
    show_message( "Room in savefile doesn't exist!" );
    return false;
}
