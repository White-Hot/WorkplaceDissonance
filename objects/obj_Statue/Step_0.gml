if (shoot = true)
{
	instance_create_layer(x+(irandom_range(20,-20)),y-80,"Instances",objStatb);
	shoot = false;
	alarm[0] = 80;
}