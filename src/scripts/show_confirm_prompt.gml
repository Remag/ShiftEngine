/// show_confirm_prompt( questionStr, onConfirmScript )
var questionStr = argument0;
var onConfirm = argument1;

var prompt = instance_create( 0, 0, oConfirmPrompt );
prompt.QuestionStr = questionStr;
prompt.OnConfirm = onConfirm;
