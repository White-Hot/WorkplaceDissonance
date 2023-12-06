audio_play_sound(String,1,0);
audio_play_sound(Drum1,1,0);
audio_play_sound(Strings,1,0);
audio_play_sound(Drum2,1,0);
audio_play_sound(Horn,1,0);

alarm[0] = 1800;

obj_MASTERcon.FlatPackDone = true;

// Set chosenRoomIndex based on your logic
chosenRoomIndex = chooseRandomRoom();
