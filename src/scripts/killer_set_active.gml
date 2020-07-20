/// killer_set_active( killerId, isActive )
// Enable or disable player killers. An inactive killer will not trigger on player contact.
// All killers are active by default.
// An instance id or a general object id can be passed as an argument.
// A killer deactivation command lasts until the killer is reactivated or until the room changes.
var targetId = argument0;
var isActive = argument1;

if( object_exists( targetId ) ) {
    // Activate all instances of an object.
    var createNewCommand = true;
    with( oKillerObjectActivationCommand ) {
        // Check for a direct override.
        if( KillerId == targetId ) {
            IsActive = isActive;
            createNewCommand = false;
            continue;
        }
        // Also check command's parent chain for matches.
        var objectId = -100;
        if( object_exists( KillerId ) ) {   
            objectId = object_get_parent( KillerId );
        } else if( instance_exists( KillerId ) ) {
            objectId = KillerId.object_index;
        }
        while( objectId != -100 ) {
            if( targetId == objectId ) {
                // Command overriden by a more general one.
                instance_destroy();
                break;
            }
            objectId = object_get_parent( objectId );        
        }
    }
    if( createNewCommand ) {
        // No similar command found, create a new one.
        var newCommand = instance_create( 0, 0, oKillerObjectActivationCommand );
        newCommand.KillerId = targetId;
        newCommand.IsActive = isActive;
    }
} else {
    // Activate a specific instance.
    with( oKillerInstanceActivationCommand ) {
        // Check for a direct override. Exit the script immediately if a match is found.
        if( KillerId == targetId ) {
            IsActive = isActive;
            return 0;
        }
    }
    // No similar command found, create a new one.
    var newCommand = instance_create( 0, 0, oKillerInstanceActivationCommand );
    newCommand.KillerId = targetId;
    newCommand.IsActive = isActive;
}

