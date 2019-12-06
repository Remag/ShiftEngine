/// save_metadata()

var metadataName = "Saves\metadata";
var metadataFile = file_text_open_write( metadataName );
file_text_write_real( metadataFile, global.LastSaveIndex );
file_text_close( metadataFile );
