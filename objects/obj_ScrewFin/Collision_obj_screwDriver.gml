audio_play_sound(Screw,1,false);
display_mouse_set(20, 46);
audio_stop_all();


if (obj_con.Time  < 10000)
{
	room_goto(FlatPackW);
}

if (obj_con.Time  > 10000) 
{
room_goto(FlatPackL);
}

instance_destroy(obj_con);