/// register_system_keybind( keyCode )
// Creates and returns a key index to use in functions like button_check( keyIndex )
// This index is non rebindable.
var keyCode = argument0;
var newId = global.InputKeyCount;
global.InpuKeyCodes[newId] = keyCode;
global.InputKeyCount++;
return newId;
