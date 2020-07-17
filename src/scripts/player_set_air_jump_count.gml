/// player_set_air_jump_count( jumpCount )
// Sets the number of jumps a player can perform without touching the floor.
// The default value is 1 (player can double jump)
// If the value is set to -1, player has infinite air jumps.
// The maximum number of air jumps is persistent across rooms 
// and will be put in the save file.

var jumpCount = argument0;

with( oPlayer ) {
    if( jumpCount >= 0 ) {
        CurrentAirJumpCount = max( 0, CurrentAirJumpCount + jumpCount - AirJumpCount );
    } else {
        CurrentAirJumpCount = -1;
    }
    AirJumpCount = jumpCount;
}
