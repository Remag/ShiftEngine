/// delete_save_data( slotIndex )
var saveIndex = argument0;

var fileName = get_save_file_name( saveIndex );
if( file_exists( fileName ) ) {
    file_delete( fileName );
}
