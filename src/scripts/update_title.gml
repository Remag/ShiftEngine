/// update_title()

var d, h, m, s, t, c;

// Current time elapsed (per-save).
t = oWorld.TimeSeconds;
// Caption Template.
c = global.DeathtimeTitleFormat; 

// Seconds in an hour.
h = string( floor( t / 3600 ) );
t %= 3600; 
// Seconds in 10 minutes (First Digit).
m = string( floor( t / 600 ) );
t %= 600; 
// Seconds in a minute (Second Digit)
m += string( floor( t / 60 ) );
t %= 60;
// 10 Seconds (First Digit). 
s = string(floor( t / 10 ) );
t %= 10; 
// Seconds (Second Digit)
s += string( floor( t ) ); 

c = string_replace( c, "%D", string( oWorld.DeathCount ) ); // Match %D with Deaths
c = string_replace( c, "%H", string( h ) ); // Match %H with Hours
c = string_replace( c, "%M", string( m ) ); // Match %M with Minutes
c = string_replace( c, "%S", string( s ) ); // Match %S with Seconds

window_set_caption( global.WindowTitle + c ); // Set formatted string as title

