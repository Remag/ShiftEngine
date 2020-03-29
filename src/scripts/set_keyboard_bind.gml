/// set_keyboard_bind( keyIndex, newKeyCode )
var keyIndex = argument0;
var newKeyCode = argument1;

global.RegisteredKeyboardCodes[keyIndex] = newKeyCode;
var index = global.RegisteredKeybindIndices[keyIndex];
global.InpuKeyCodes[index] = newKeyCode;
ini_open( "settings.ini" );
ini_write_real( "Keybinds", global.RegisteredKeybindNames[keyIndex], newKeyCode );
ini_close();

