//Follow player
if(on = false)
{
speed = 0;	
}

if (on = true)
{
distance = distance_to_object(obj_Player);



if (distance <= 50) 
{
speed = 0;
}
	
else
{	
	speed = 0.95;
// Calculate the direction towards obj_Player
direction = point_direction(x, y, obj_Player.x, obj_Player.y);

// Calculate the horizontal and vertical movement components
var hspd = lengthdir_x(speed, direction);
var vspd = lengthdir_y(speed, direction);

// Move the object
x += hspd;
y += vspd;
}



if (con_Game.pause = true)
{
	speed = 0;
}

if (con_Game.pause = false)
{
	speed = 0.95;
}
}