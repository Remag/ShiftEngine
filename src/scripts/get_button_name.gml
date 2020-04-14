/// get_button_name( keyIndex )
// Returns a string containing the button name.
// Takes a key index that is acquired from keybind register functions.
var code = global.InpuKeyCodes[argument0];
return get_virtual_key_name( code );
