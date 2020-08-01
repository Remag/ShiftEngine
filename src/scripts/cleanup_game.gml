with( oAvoidance ) {
    instance_destroy();
}
with( oAvoidanceHotkeys ) {
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
global.ActiveAvoidance = noone;
audio_stop_all();
