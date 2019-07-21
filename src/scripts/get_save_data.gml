/// create_save_data( NUMBER saveIndex )
// Create a ds_map containing the save data for the given slot.
// -1 is returned if the file doesn't exist.
// The map must be destroyed by calling ds_map_destroy.
var saveIndex = argument0;

var saveFile = file_text_open_read( get_save_file_name( saveIndex ) );
if( saveFile == -1 ) {
    return -1;
}
var saveString = file_text_read_string( saveFile );
file_text_close( saveFile );
if( string_length( saveString ) == 0 ) {
    return -1;
}
return json_decode( saveString );

