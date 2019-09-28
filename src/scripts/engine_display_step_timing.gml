var targetStep = argument0;
var panelX = argument1;
var panelY = argument2;
var lineHeight = argument3;
var displayCount = argument4;

var lineY = panelY + displayCount * lineHeight;
var timingStr = 'Step: ' + string( targetStep );
draw_text_outline( panelX, lineY, timingStr, c_white, c_black );
