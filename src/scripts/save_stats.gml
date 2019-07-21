/// save_stats()
// Save global player statistics like death count and time played.

global.SaveData[? "engine.time"] = global.Time;
global.SaveData[? "engine.death"] = global.Death;

var saveFile = file_text_open_write( get_save_file_name( global.SaveIndex ) );
var saveJson = json_encode( global.SaveData );
file_text_write_string( saveFile, saveJson );
file_text_close( saveFile );
