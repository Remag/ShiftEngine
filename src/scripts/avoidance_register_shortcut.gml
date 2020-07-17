//// avoidance_register_shortcut( avoidanceInstance, shortcutKey, avoidanceStep )
// Create a debug-only keyboard shortcut to jump to a particular point in a given avoidance.
// When the key is pressed, the avoidance will always start from a given point 
// until another timing is set.
var avoidance = argument0;
var shortcut = argument1;
var step = argument2;

if( global.Debug ) {
    var count = oAvoidanceHotkeys.ShortcutCount;
    oAvoidanceHotkeys.ShortcutKeys[count] = shortcut;
    oAvoidanceHotkeys.ShortcutSteps[count] = step;
    oAvoidanceHotkeys.ShortcutCount++;
}
