/// circle_params_create()
// Create a basic circle class.
// It can be filled with arbitrary data fields which will be available to circle instances
// throught the Circle data field.
// Parameters created with this method will regularly check if they are connected to any existing
// circle entities and destroy itself if no entities exist.
var result = instance_create( 0, 0, oEntitiesShape );
result.Creator = id;
return result;
