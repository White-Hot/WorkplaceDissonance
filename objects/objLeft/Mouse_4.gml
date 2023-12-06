audio_play_sound(soundLclcik,1,false);
if (objVisCon.ClickAble = true)
{
	if (objVisCon.Step = 2)
	{
		objCent.image_index = 4;
		objLeft.image_index = 2;
		objRight.image_index = 3;
		
		objVisCon.Step = 3;
		objVisCon.choice = 3;
		return;
	}
	
		if (objVisCon.Step = 3 && objVisCon.choice = 3)
	{
		objCent.image_index = 8;
		objLeft.image_index = 7;
		objRight.image_index = 7;
		objVisCon.Step = 4;
		objVisCon.choice = 1;
		return;
	}
		if (objVisCon.Step = 3 && objVisCon.choice = 2)
	{
	objCent.image_index = 4;
		objLeft.image_index = 2;
		objRight.image_index = 3;
		
		objVisCon.Step = 4;
		objVisCon.choice = 3;
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
		objCent.image_index = 9;
		objLeft.image_index = 8;
		objRight.image_index = 8;
		objVisCon.Step = 6;
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
	
	if (objVisCon.Step = 6)
	{
	room_goto(VisOut)	
	}

}