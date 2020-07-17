/// polygon_create( spawnX, spawnY, spawnAngle, vertexCount, edgeEntityCount, spawnSpeed, spawnObj, opt_polygonParams )
// Spawn a ring of entities.
// spawnX - center X
// spawnY - center Y
// spawnAngle - starting angle
// vertexCount - number of vertices in a spawned polygon
// edgeEntityCount - number of entities spawned per edge.
// spawnSpeed - base speed of a polygon from the spawn position.
// spawnObj - entity object to spawn
// (optional) polygonParams - instance id with arbitrary shape parameters. 
//  This argument will be attached to every entity as a "Polygon" field.

var spawnX = argument[0];
var spawnY = argument[1];
var spawnAngle = argument[2];
var vertexCount = argument[3];
var edgeEntityCount = argument[4];
var spawnSpeed = argument[5];
var spawnObj = argument[6];

var polygon;
if( argument_count > 7 ) {
    polygon = argument[7];
} else {
    polygon = polygon_params_create();
}

if( polygon.Shift_EntityCount != 0 ) {
    show_error( "Same polygon parameters cannot be used for multiple polygons.", true );
}

polygon.x = spawnX;
polygon.y = spawnY;
polygon.Shift_EntityCount = edgeEntityCount * vertexCount;

var spawnAngleRad = degtorad( spawnAngle );
var verticesX, verticesY;
for( var i = 0; i < vertexCount; i++ ) {
    verticesX[i] = cos( spawnAngleRad + 2 * pi * i / vertexCount );
    verticesY[i] = sin( spawnAngleRad + 2 * pi * i / vertexCount );
}
verticesX[vertexCount] = verticesX[0];
verticesY[vertexCount] = verticesY[0];

for( var i = 0; i < vertexCount; i++ ) {
    var edgeDeltaX = verticesX[i + 1] - verticesX[i];
    var edgeDeltaY = verticesY[i + 1] - verticesY[i];
    
    for( var j = 0; j < edgeEntityCount; j++ )
    {
        var xOffset = verticesX[i] + edgeDeltaX * j / edgeEntityCount;
        var yOffset = verticesY[i] + edgeDeltaY * j / edgeEntityCount;
        var entity = instance_create( spawnX + xOffset, spawnY + yOffset, spawnObj );
        entity.direction = point_direction( 0, 0, xOffset, yOffset );
        entity.speed = spawnSpeed * point_distance( 0, 0, xOffset, yOffset );
        polygon.Shift_Entities[i * edgeEntityCount + j] = entity;
    }
}
return polygon;
