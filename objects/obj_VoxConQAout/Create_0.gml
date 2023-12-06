if (room = ConBest)
{
	audio_play_sound(OtherPos,1,false);
	alarm[0] = 300;
}

if (room = ConWin)
{
	audio_play_sound(OtherNeut,1,false);
	alarm[1] = 300;
}

if (room = ConPoor)
{
audio_play_sound(OtherNeg,1,false);	
alarm[2] = 600;
}

if (room = ConLose)
{
		audio_play_sound(OtherNeg,1,false);
	alarm[4] = 300;
}

