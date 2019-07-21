/// reload_game()
// Load the game with the currently defined global.SaveData.

var isFresh = global.SaveData[? "engine.freshSave"];
if( isFresh ) {
    new_game();
    return 0;
}

var sx = global.SaveData[? "engine.x"];
var sy = global.SaveData[? "engine.y"];
var sr = global.SaveData[? "engine.room"];
var sf = global.SaveData[? "engine.dir"];
var sg = global.SaveData[? "engine.grav"];
var sdj = global.SaveData[? "engine.djump"];
   
if( room_exists( sr ) ) {
    // Schedule player for loading on the next room.
    with( instance_create( sx, sy, oPlayerEntranceData ) ) {
        EntranceId = -1;
        Dir = sf;
        Djump = sdj || global.SaveHop;
        GravityDir = sg;
    }
    room_goto( sr );
        
    // Logging load calls.
    show_debug_message( "Loaded successfully @ " + room_get_name( sr )
        + " (" + string( sx ) + ", " + string( sy ) + ")" );
} else {
    // Nonexistent room in savefile, panic!!
    show_message( "Room in savefile doesn't exist!" );
    new_game();
}
