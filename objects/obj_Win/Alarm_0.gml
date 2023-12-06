// Create a lookup table for room names and indices
var roomLookup = ds_map_create();
ds_map_add(roomLookup, "TheChase01", TheChase01);
ds_map_add(roomLookup, "BreakRoom1", BreakRoom1);
ds_map_add(roomLookup, "ConIntro", ConIntro);
ds_map_add(roomLookup, "FlatPackStart", FlatPackStart);
ds_map_add(roomLookup, "visNovIn", visNovIn);

if (chosenRoomIndex != -1) {
    var roomName = chosenRoomIndex;
    var roomIndex = ds_map_find_value(roomLookup, roomName);
    if (roomIndex != undefined) {
        room_goto(roomIndex);
    }
}

// Destroy the lookup table
ds_map_destroy(roomLookup);

