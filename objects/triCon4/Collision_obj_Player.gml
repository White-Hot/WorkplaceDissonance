if (on = true)
{
if (instance_exists(obj_boss))
{
	audio_play_sound(bossSound,1,true);
alarm[0] = 340;
obj_ConConTimeCon.timer = false;
}

inGameText.Trig4 = true;
on = false;
audio_play_sound(OtherPos,1,false);
}