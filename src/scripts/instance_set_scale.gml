/// instance_set_scale( targetId, targetScale )
// Instantly set both x and y scale of a given instance or all instances of a given object.
var targetId = argument0;
var targetScale = argument1;
with( targetId ) {
    image_xscale = targetScale;
    image_yscale = targetScale;
}

