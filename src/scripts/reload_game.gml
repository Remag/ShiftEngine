/// reload_game()
// Load the game with the world's SaveData. Returns if loading was a success.

var sx = oWorld.SaveData[? "engine.x"];
var sy = oWorld.SaveData[? "engine.y"];
var sr = oWorld.SaveData[? "engine.room"];
var sd = oWorld.SaveData[? "engine.dir"];
var sg = oWorld.SaveData[? "engine.grav"];
var sdj = oWorld.SaveData[? "engine.djump"];
   
if( room_exists( sr ) ) {
    if( sx != noone && sy != noone && sd != noone && sg != noone && sdj != noone ) {
        // Schedule player for loading on the next room.
        var entranceData = instance_create( sx, sy, oPlayerEntranceData );
        entranceData.EntranceId = -1;
        entranceData.Dir = sd;
        entranceData.Djump = sdj || global.SaveHop;
        entranceData.GravityDir = sg;
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
