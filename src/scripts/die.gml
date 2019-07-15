/// die()
// Kills the calling player

global.death++;
update_title();
if( global.saveData[? "started"] ) {
    save( false );
}
play_sound( seDeath );
var emitter = instance_create( x, y, oPlayerBloodEmitter );
emitter.GravityDir = GravityDir;
instance_destroy();


