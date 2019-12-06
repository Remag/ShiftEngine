/// draw_text_outline( textX, textY, textStr, opt_textColor, opt_outlineColor )
var textX = argument[0];
var textY = argument[1];
var textStr = argument[2];

var textColor = c_white;
if( argument_count > 3 ) {
    textColor = argument[3];
} 
var outlineColor = c_black;
if( argument_count > 4 ) {
    outlineColor = argument[4];
}

//draw the text outline
draw_set_color( outlineColor );
draw_text( textX - 1, textY + 1,textStr );
draw_text( textX - 1, textY, textStr );
draw_text( textX - 1, textY - 1, textStr );
draw_text( textX + 1, textY + 1, textStr );
draw_text( textX + 1, textY, textStr );
draw_text( textX + 1, textY - 1, textStr );
draw_text( textX, textY + 1, textStr );
draw_text( textX, textY - 1, textStr );

//draw the text itself
draw_set_color( textColor );
draw_text( textX, textY, textStr );
