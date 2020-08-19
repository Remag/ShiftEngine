/// game_get_flag( flagNameStr )
// Return a named flag from the save file. False is returned if the flag is not in the save.

var flagValue = game_get_value( argument0 );
if( is_undefined( flagValue ) ) {
    return false;
}
return flagValue;
