/// save(BOOL saveLocation)
// Pass argument0 as false to only save death/time

// Things here will only be saved when you hit a savepoint
// Or whenever argument0 is true, you know.
if( argument0 ) {
    with( oPlayer ) {
        global.SaveData[? "x"] = x;
        global.SaveData[? "y"] = y;
        global.SaveData[? "dir"] = Dir;
        global.SaveData[? "room"] = room;
        global.SaveData[? "grav"] = GravityDir;
        global.SaveData[? "djump"] = Djump;
    }
}

// Saved every restart
global.SaveData[? "time"] = global.Time;
global.SaveData[? "death"] = global.Death;
global.SaveData[? "freshSave"] = false;

var saveFile = file_text_open_write( get_save_file_name( global.SaveIndex ) );
var saveJson = json_encode( global.SaveData );
file_text_write_string( saveFile, saveJson );
file_text_close( saveFile );
