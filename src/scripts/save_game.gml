/// save_game()
// Save current player position and progress to the file indicated by oWorld.SaveIndex.

if( instance_exists( oPlayer ) ) {
    oWorld.SaveData[? "engine.x"] = oPlayer.x;
    oWorld.SaveData[? "engine.y"] = oPlayer.y;
    oWorld.SaveData[? "engine.dir"] = oPlayer.Dir;
    oWorld.SaveData[? "engine.grav"] = oPlayer.GravityDir;
    oWorld.SaveData[? "engine.maxairjump"] = oPlayer.AirJumpCount;
    oWorld.SaveData[? "engine.curairjump"] = oPlayer.CurrentAirJumpCount;
} else {
    oWorld.SaveData[? "engine.x"] = noone;
    oWorld.SaveData[? "engine.y"] = noone;
    oWorld.SaveData[? "engine.dir"] = noone;
    oWorld.SaveData[? "engine.grav"] = noone;
    oWorld.SaveData[? "engine.maxairjump"] = noone;
    oWorld.SaveData[? "engine.curairjump"] = noone;
}

oWorld.SaveData[? "engine.room"] = room;
oWorld.SaveData[? "engine.freshSave"] = false;
save_stats();
