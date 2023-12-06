audio_stop_sound(soundConMus);

if (obj_ConConTimeCon.Time < 4000) 
{
	room_goto(ConBest);
}

if (obj_ConConTimeCon.Time <= 8000) && (obj_ConConTimeCon.Time >= 4000)
{
	room_goto(ConWin);
}

if (obj_ConConTimeCon.Time <= 12000) && (obj_ConConTimeCon.Time >= 8000)
{
	room_goto(ConPoor);
}

if (obj_ConConTimeCon.Time > 12000)
{
	room_goto(ConLose);
}