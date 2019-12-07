/// create_time_string( NUMBER secondsCount )
var secondsCount = argument0;

// Seconds in an hour.
var h = string( floor( secondsCount / 3600 ) );
secondsCount %= 3600; 
// Seconds in 10 minutes (First Digit).
var m = string( floor( secondsCount / 600 ) );
secondsCount %= 600; 
// Seconds in a minute (Second Digit)
m += string( floor( secondsCount / 60 ) );
secondsCount %= 60;
// 10 Seconds (First Digit). 
var s = string( floor( secondsCount / 10 ) );
secondsCount %= 10; 
// Seconds (Second Digit)
s += string( floor( secondsCount ) ); 

return h + ':' + m + ':' + s;
