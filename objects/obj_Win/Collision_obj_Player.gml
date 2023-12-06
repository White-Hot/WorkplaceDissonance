if(on = true)
{
	
instance_deactivate_object(obj_Persuer);

audio_sound_gain(String,0,4);
audio_sound_gain(Drum1,0,4);
audio_sound_gain(Strings,0,4);
audio_sound_gain(Drum2,0,4);
audio_sound_gain(Horn,0,4);

audio_play_sound(Soplayerinpso,1,false);
alarm[1] = 300;

audio_play_sound(End,1,0);

obj_EndbG.image_alpha = 1;
obj_chaend.start = true;

alarm[0] = 900;

obj_MASTERcon.TheChaseDone = true;
on = false;
obj_Player.stop = true;


}