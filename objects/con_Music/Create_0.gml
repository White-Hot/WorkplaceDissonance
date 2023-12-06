//PlayMusic

audio_play_sound(String,1,true);
audio_play_sound(Drum1,1,true);
audio_play_sound(Strings,1,true);
audio_play_sound(Drum2,1,true);
audio_play_sound(Horn,1,true);


//LoopMusic

audio_sound_loop(String, true);
audio_sound_loop(Drum1, true);
audio_sound_loop(Strings, true);
audio_sound_loop(Drum2, true);
audio_sound_loop(Horn, true);

//SetVolumme
audio_sound_gain(String,1,0);
audio_sound_gain(Drum1,0,0);
audio_sound_gain(Strings,0,0);
audio_sound_gain(Drum2,0,0);
audio_sound_gain(Horn,0,0);
