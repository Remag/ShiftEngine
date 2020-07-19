/// killer_set_active( killerId, isActive )
// Enable or disable player killers. An inactive killer will not trigger on player contact.
// All killers are active by default.
// An instance id or a general object id can be passed as an argument.
// A killer deactivation command lasts until the killer is reactivated or until the room changes.
var killerId = argument0;
var isActive = argument1;

with( oKillerActivationCommand ) {
    // Check for a direct override. Exit the script immediately if a match is found.
    if( KillerId == killerId ) {
        IsActive = isActive;
        return 0;
    }
    // Also check target's parent chain for matches.
    var objectId = -100;
    if( object_exists( KillerId ) ) {   
        objectId = object_get_parent( KillerId );
    } else if( instance_exists( KillerId ) ) {
        objectId = KillerId.object_index;
    }
    while( objectId != -100 ) {
        if( killerId == objectId ) {
            // Command overriden by a more general one.
            instance_destroy();
            break;
        }
        objectId = object_get_parent( objectId );        
    }
}
// No similar command found, create a new one.
var newCommand = instance_create( 0, 0, oKillerActivationCommand );
newCommand.KillerId = killerId;
newCommand.IsActive = isActive;
