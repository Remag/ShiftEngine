/// spawner_attach( ownerId, spawnPeriod, spawnObject, spawnDuration = undefined )

// Create a mechanism that creates an instance of spawnObject.
// The spawner is attached to a given instance or to all instances of a given object.
// The spawnObject is created every spawnPeriod frames.
// A non-integer can be passed as spawnPeriod, in this case the spawning will be 
// averaged across frames to match the spawn period as closely as poosible.
// Duration in frames can be specified. By default the spawner exists until the spawner or its parent are explicitly destroyed.
// The spawner instance is returned if it was attached to a single instance. 
// Otherwise undefined is returned.
// An Spawner field is created in the owner instance that references the spawner instance.

var ownerId = argument[0];
var spawnPeriod = argument[1];
var spawnObject = argument[2];
var spawnDuration = undefined;
if( argument_count > 3 ) {
    spawnDuration = argument[3];
}

var resultSpawner = noone;
with( ownerId ) {
    var spawner = instance_create( x, y, oAttachedSpawner );
    spawner.OwnerInstance = id;
    spawner.Period = spawnPeriod;
    spawner.CurrentPhase = 1;
    spawner.SpawnObject = spawnObject;
    spawner.Duration = spawnDuration;
    Spawner = spawner;
    Executor = spawner;
    if( resultSpawner == noone ) {
        resultSpawner = spawner;
    } else {
        resultSpawner = undefined;
    }
}
return resultSpawner;

