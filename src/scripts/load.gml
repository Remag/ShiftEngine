/// load (BOOL loadDeathTime, BOOL hardReloadFromFile)
// Pass argument0 as true for full load
// Pass argument1 if you want to load the file instead... ?
// Only do that when you're FIRST loading the save!

if( argument1 ) {
    ds_map_destroy( global.SaveData );
    global.SaveData = get_save_data( global.SaveIndex );
    if( global.SaveData == -1 ) {
        new_game();
        return 0;
    }
}

if( !global.SaveData[? "freshSave"] || argument0 ) {
    // Load data - values are self-explainatory from the ds_map keys (inside [? ""])
    var sx, sy, sr, sf, sd, st, sg, sdj;
    sx = global.SaveData[? "x"];
    sy = global.SaveData[? "y"];
    sr = global.SaveData[? "room"];
    sf = global.SaveData[? "dir"];
    sd = global.SaveData[? "death"];
    st = global.SaveData[? "time"];
    sg = global.SaveData[? "grav"];
    sdj = global.SaveData[? "djump"];
    
    // Loading death&time
    if( argument0 ) {
        global.Death = sd;
        global.Time = st;
        update_title();
    }
    
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
        + " (" +  string( sx ) + ", " + string( sy ) + "), Deaths: " + string( sd )
        + ", Time (seconds): " + string( st ));
    } else {
        // Nonexistent room in savefile, panic!!
        show_message( "Room in savefile doesn't exist!" );
        new_game();
    }
} else {
    new_game(); // Create a new game if we haven't started a save yet
}

