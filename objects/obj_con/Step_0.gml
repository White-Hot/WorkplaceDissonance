if (room = FlatPackStart)
{
	Time = 0;
}

if (Time > 10000)
{
display_mouse_set(20, 46);
audio_stop_all();
room_goto(FlatPackL);
instance_destroy(obj_con);
}