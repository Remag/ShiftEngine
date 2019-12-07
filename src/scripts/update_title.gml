/// update_title()
// Current time elapsed (per-save).
var t = oWorld.TimeSeconds;
// Caption Template.
var c = global.DeathtimeTitleFormat; 

c = string_replace( c, "%D", string( oWorld.DeathCount ) ); // Match %D with Deaths
c = string_replace( c, "%T", create_time_string( t ) ); // Match %T with Time

window_set_caption( global.WindowTitle + c ); // Set formatted string as title

