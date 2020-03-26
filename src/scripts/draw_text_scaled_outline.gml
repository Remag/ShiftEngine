/// draw_text_scaled_outline( textX, textY, scaleX, scaleY, textStr, opt_textColor, opt_outlineColor )
var textX = argument[0];
var textY = argument[1];
var scaleX = argument[2];
var scaleY = argument[3];
var textStr = argument[4];

var textColor = c_white;
if( argument_count > 5 ) {
    textColor = argument[5];
} 
var outlineColor = c_black;
if( argument_count > 6 ) {
    outlineColor = argument[6];
}

//draw the text outline
draw_set_color( outlineColor );
draw_text_transformed( textX - 1, textY + 1, textStr, scaleX, scaleY, 0 );
draw_text_transformed( textX - 1, textY, textStr, scaleX, scaleY, 0 );
draw_text_transformed( textX - 1, textY - 1, textStr, scaleX, scaleY, 0 );
draw_text_transformed( textX + 1, textY + 1, textStr, scaleX, scaleY, 0 );
draw_text_transformed( textX + 1, textY, textStr, scaleX, scaleY, 0 );
draw_text_transformed( textX + 1, textY - 1, textStr, scaleX, scaleY, 0 );
draw_text_transformed( textX, textY + 1, textStr, scaleX, scaleY, 0 );
draw_text_transformed( textX, textY - 1, textStr, scaleX, scaleY, 0 );

//draw the text itself
draw_set_color( textColor );
draw_text_transformed( textX, textY, textStr, scaleX, scaleY, 0 );
draw_set_color( c_white );
