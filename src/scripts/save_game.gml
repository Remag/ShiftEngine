/// save_game()
// Save current player position and progress to the file indicated by global.SaveIndex.

with( oPlayer ) {
    global.SaveData[? "engine.x"] = x;
    global.SaveData[? "engine.y"] = y;
    global.SaveData[? "engine.dir"] = Dir;
    global.SaveData[? "engine.room"] = room;
    global.SaveData[? "engine.grav"] = GravityDir;
    global.SaveData[? "engine.djump"] = Djump;
}

global.SaveData[? "engine.freshSave"] = false;
save_stats();
