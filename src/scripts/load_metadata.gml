/// load_metadata()

var metadataName = "Saves\metadata";
if( file_exists( metadataName ) ) {
    var metadataFile = file_text_open_read( metadataName );
    global.LastSaveIndex = file_text_read_real( metadataFile );
    file_text_close( metadataFile );
} else {
    global.LastSaveIndex = -1;
}
