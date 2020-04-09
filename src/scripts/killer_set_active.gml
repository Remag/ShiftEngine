/// killer_set_active( killerId, isActive )
// Enable or disable player killers. An inactive killer will not trigger on player contact.
// All killers are active by default.
// An instance id or a general object id can be passed as an argument.
// More specific activation commands override less specific ones
// i.e. you can deactivate an object but selectively activate specific instances of that object.
// A killer deactivation command lasts until the killer is reactivated or until the room changes.
var killerId = argument0;
var isActive = argument1;

with( oKillerActivationCommand ) {
    if( KillerId == killerId ) {
        IsActive = isActive;
        return 0;
    }
}
var newCommand = instance_create( 0, 0, oKillerActivationCommand );
newCommand.KillerId = killerId;
newCommand.IsActive = isActive;
