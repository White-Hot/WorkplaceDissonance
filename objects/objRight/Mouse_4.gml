audio_play_sound(soundRclcik,1,false);

if (objVisCon.ClickAble = true)
{
	if (objVisCon.Step = 2)
	{
		objCent.image_index = 3;
		objLeft.image_index = 1;
		objRight.image_index = 2;
		objVisCon.Step = 3;
		objVisCon.choice = 2;
		return;
	}

		if (objVisCon.Step = 3 && objVisCon.choice = 1)
	{
		objCent.image_index = 7;
		objLeft.image_index = 6;
		objRight.image_index = 6;
		objVisCon.Step = 4;
		objVisCon.choice = 3;
		return;
	}
		
		if (objVisCon.Step = 3 && objVisCon.choice = 3)
	{
		objCent.image_index = 9;
		objLeft.image_index = 8;
		objRight.image_index = 8;
		objVisCon.Step = 6;
		return;
	}
	
	if (objVisCon.Step = 3 && objVisCon.choice = 2)
	{
		objCent.image_index = 5;
		objLeft.image_index = 3;
		objRight.image_index = 4;
		objVisCon.Step = 4;
		objVisCon.choice = 2;
		return;
	}
	
			if (objVisCon.Step = 4 && objVisCon.choice = 1)
	{
		objCent.image_index = 9;
		objLeft.image_index = 8;
		objRight.image_index = 8;
		objVisCon.Step = 6;
		return;
	}
	
	if (objVisCon.Step = 4 && objVisCon.choice = 2)
	{
		objCent.image_index = 5;
		objLeft.image_index = 3;
		objRight.image_index = 4;
		objVisCon.Step = 5;
		objVisCon.choice = 2;
		return;
	}
				if (objVisCon.Step = 4  && objVisCon.choice = 3)
	{
	objCent.image_index = 9;
		objLeft.image_index = 8;
		objRight.image_index = 8;
		objVisCon.Step = 6;
		return;
	}
	
	if (objVisCon.Step = 5 && objVisCon.choice = 2)
	{
		objCent.image_index = 9;
		objLeft.image_index = 8;
		objRight.image_index = 8;
		objVisCon.Step = 6;
		return;
	}
		
	
	
	if (objVisCon.Step = 6)
	{
	room_goto(VisOut)	
	}
	
}
