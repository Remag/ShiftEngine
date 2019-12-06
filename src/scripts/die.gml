/// die()
// Kills the calling player

oWorld.DeathCount++;
update_title();
if( !get_game_value( "engine.freshSave" ) ) {
    save_stats();
}
play_sound( seDeath );
var emitter = instance_create( x, y, oPlayerBloodEmitter );
emitter.GravityDir = GravityDir;
instance_destroy();


