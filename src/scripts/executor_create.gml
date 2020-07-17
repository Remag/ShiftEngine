/// executor_create( executePeriod, targetScript, executeDuration = undefined )

// Create a mechanism that calls a targetScript every executePeriod frames.
// A non-integer can be passed as executePeriod, in this case the spawning will be 
// averaged across frames to match the executePeriod as closely as poosible.
// Duration can be specified. By default the executor exists until explicitly destroyed.
// The executor instance is returned.

var executePeriod = argument[0];
var targetScript = argument[1];
var executeDuration = undefined;
if( argument_count > 2 ) {
    executeDuration = argument[2];
}

var executor = instance_create( 0, 0, oFixedExecutor );
executor.Period = executePeriod;
executor.CurrentPhase = 1;
executor.TargetScript = targetScript;
executor.Duration = executeDuration;
return executor;


