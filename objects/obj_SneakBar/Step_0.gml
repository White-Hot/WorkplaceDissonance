//follow player

x = obj_Player.x -100;
y = obj_Player.y -100;


//set sprite
if (obj_Player.sneak >= 100)
{
	image_index = 1;
}

if (obj_Player.sneak >= 250)
{
	image_index = 2;
}

if (obj_Player.sneak >= 350)
{
	image_index = 3;
}

if (obj_Player.sneak >= 450)
{
	image_index = 4;
}