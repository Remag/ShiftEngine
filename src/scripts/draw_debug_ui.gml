/// draw_debug_ui( coordinateTarget, x, y, drawColor, drawFont)
// Draws a debug overlay with the information:
// X, Y Coordinate (with V-Align up to 4 digits)
// Horizontal Alignment (0 / 1 / 2)
// Current room name
// Current true fps, and normal fps (room_speed except with lag accounted)

// This script is reusable as the data is pulled from the provided player

var textColor = argument3;
var drawX = argument1;
var drawY = argument2;
    
draw_set_alpha( 1.0 );
draw_set_font( argument4 );
draw_set_halign( fa_left );
draw_set_valign( fa_top );

var debugText = "";
with( argument0 ) {
    var extended_valign = string( floor( ( y * 10000 ) - ( floor(y) * 10000 ) ) );
    while( string_length( extended_valign ) < 4 ) {
        extended_valign += "0";
    }
    
    var norm_valign = y - floor( y );
    debugText += "(" + string( x ) + ", ";
    var y_str = string( y );
    if( string_pos( ".", y_str ) == 0 ) {
        y_str += ".00";
    }
    debugText += y_str + " or ." + extended_valign + ") ";
    debugText += "align " + string( x % 3 ) + " @ "; // H-Align
}

var fpsreal = string( round( min( fps_real, 9999 ) ) );
debugText += room_get_name( room ); // Room Name
debugText += " / " + fpsreal + " fps ";
    
// Pad (xx apparent) fps with spaces, assuming max fps_real is 9999 (ensured above)
for( var i = 0; i < ( 4 - string_length( fpsreal ) ); i++ ) {
    debugText += " ";
}
    
debugText += "(" + string( round( fps ) ) + " apparent)"; // room_speed but accounts lag
debugText += " D: " + string( oWorld.DeathCount );
    
if( global.God ) {
    debugText += " [god]";
}
    
draw_set_color( textColor );
draw_text_outline( drawX, drawY, debugText, c_white, c_black );


