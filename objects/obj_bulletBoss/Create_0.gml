HP = 3;
audio_play_sound(soundBossShot,3,false);

if (obj_Player.sprite_index =  S_Player_Down)
{
	image_index = 0;
}

if (obj_Player.sprite_index =  S_Player_Right)
{
	image_index = 1;
}

if (obj_Player.sprite_index =  S_Player_Up)
{
	image_index = 3;
}

if (obj_Player.sprite_index =  S_Player_Left)
{
	image_index = 2;
}