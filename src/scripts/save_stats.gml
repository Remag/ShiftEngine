/// save_stats()
// Save global player statistics like death count and time played.

oWorld.SaveData[? "engine.time"] = oWorld.TimeSeconds;
oWorld.SaveData[? "engine.death"] = oWorld.DeathCount;

var saveFile = file_text_open_write( get_save_file_name( oWorld.SaveIndex ) );
var saveJson = json_encode( oWorld.SaveData );
file_text_write_string( saveFile, saveJson );
file_text_close( saveFile );
