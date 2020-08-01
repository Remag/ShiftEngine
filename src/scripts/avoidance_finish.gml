/// avoidance_finish()
// Stop the current avoidance and its music.
var avoidance = global.ActiveAvoidance;
with( avoidance ) {
    global.ActiveAvoidance = PreviousActiveAvoidance;
    instance_destroy();
}

with( oAvoidanceEditSlider ) {
    instance_destroy();
}
with( oAvoidanceDebugInfo ) {
    instance_destroy();
}
with( oAvoidanceTimingTable ) {
    instance_destroy();
}
with( oAvoidanceHotkeys ) {
    instance_destroy();
}
