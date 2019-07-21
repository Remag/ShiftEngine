/// new_game()
// Starts fresh savefile at the first room

create_save(); // Reset global.SaveData

room_goto( global.StartRoom );
global.Death = 0; 
global.Time = 0; 
update_title();

show_debug_message( "Starting new game..." );

