/// get_save_data( NUMBER saveIndex )
// Create a ds_map containing the save data for the given slot.
// If the file doesn't exist a new game save map is created.
// The map must be destroyed by calling ds_map_destroy.
var saveIndex = argument0;

var saveName = get_save_file_name( saveIndex );
if( !file_exists( saveName ) ) {
    return create_save_data();
}
var saveFile = file_text_open_read( saveName );
var saveString = file_text_read_string( saveFile );
file_text_close( saveFile );
if( string_length( saveString ) == 0 ) {
    return create_save_data();
}
var result = json_decode( saveString );
if( result == -1 ) {
    return create_save_data();
} else {
    return result;
}

