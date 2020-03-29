/// register_keybind( keyNameStr, defaultKeyCode )
// Creates and returns a key index to use in functions like button_check( keyIndex )
// This index will be automatically added to key configuration settings and can be rebound by the player.
var keyName = argument0;
var defaultKeyCode = argument1;
var registeredId = global.RegisteredKeybindCount;
global.RegisteredKeybindCount++;
global.RegisteredKeybindNames[registeredId] = keyName;
var keyCode = ini_read_real( "Keybinds", keyName, defaultKeyCode );
global.RegisteredKeyboardCodes[registeredId] = keyCode;
var result = register_system_keybind( keyCode );
global.RegisteredKeybindIndices[registeredId] = result;
return result;

