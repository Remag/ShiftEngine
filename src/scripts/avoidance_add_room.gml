/// avoidance_add_room( avoidanceId, roomId )
// Avoidances may span multiple rooms.
// Normally an avoidance is finished when the current room ends.
// You may call this script to add an id to the list of rooms which will not terminate the avoidance.
var avoidanceId = argument0;
var roomId = argument1;

avoidanceId.RoomList[avoidanceId.RoomCount] = roomId;
avoidanceId.RoomCount++;
