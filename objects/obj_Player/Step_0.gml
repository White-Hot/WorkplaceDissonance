stop = con_Game.pause;

if(stop = true)
{
	xSpeed = 0;
	ySpeed = 0;
}

if (stop = false)
{

//Key check
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey =keyboard_check(vk_down);


//Get x & y speed
xSpeed = (rightKey - leftKey) * moveSpeed;
ySpeed = (downKey - upKey) * moveSpeed;

//Animate?
if xSpeed == 0 && ySpeed == 0
	{
	image_index = 0;
	}
	

		
	}
	

	

//Set Direction Sprite
mask_index = sprite[DOWN];
if ySpeed == 0
{
	if xSpeed > 0 {face = RIGHT};
	if xSpeed < 0 {face = LEFT};
}

if xSpeed > 0 && face = LEFT {face = RIGHT};
if xSpeed < 0 && face = RIGHT {face = LEFT};

if xSpeed == 0
{
	if ySpeed > 0 {face = DOWN};
	if ySpeed < 0 {face = UP};
}

if ySpeed > 0 && face = UP {face = DOWN};
if xSpeed < 0 && face = DOWN {face = UP};

sprite_index = sprite[face];



//Collision
if place_meeting(x + xSpeed, y, obj_Wall)
	{
		xSpeed = 0; 
	}
	
if place_meeting(x, y + ySpeed, obj_Wall)
	{
		ySpeed = 0;
	}
	
	//Door
	if place_meeting(x, y, obj_Door) && (obj_Door.open = false)
	{
		xSpeed = 0; 
		ySpeed = 0;
	}
	

	


//Move
x += xSpeed;
y+= ySpeed


//Sneak
if(sneak >= 500)
{
	room_goto(BreakRoomLoose);
}

   stop = con_Game.pause;

if (!stop)
{
    // Key check
    rightKey = keyboard_check(vk_right);
    leftKey = keyboard_check(vk_left);
    upKey = keyboard_check(vk_up);
    downKey = keyboard_check(vk_down);

    // Get x & y speed
    xSpeed = (rightKey - leftKey) * moveSpeed;
    ySpeed = (downKey - upKey) * moveSpeed;

    // Animate?
    if (xSpeed == 0 && ySpeed == 0) {
        image_index = 0;
    }

    // Set Direction Sprite
    mask_index = sprite[DOWN];
    if (ySpeed == 0) {
        if (xSpeed > 0) {
            face = RIGHT;
        }
        if (xSpeed < 0) {
            face = LEFT;
        }
    }

    if (xSpeed > 0 && face == LEFT) {
        face = RIGHT;
    }
    if (xSpeed < 0 && face == RIGHT) {
        face = LEFT;
    }

    if (xSpeed == 0) {
        if (ySpeed > 0) {
            face = DOWN;
        }
        if (ySpeed < 0) {
            face = UP;
        }
    }

    if (ySpeed > 0 && face == UP) {
        face = DOWN;
    }
    if (ySpeed < 0 && face == DOWN) {
        face = UP;
    }

    sprite_index = sprite[face];

    // Collision
    if (place_meeting(x + xSpeed, y, obj_Wall)) {
        xSpeed = 0; 
    }
    if (place_meeting(x, y + ySpeed, obj_Wall)) {
        ySpeed = 0;
    }
	
    // Door
    if (place_meeting(x, y, obj_Door) && !obj_Door.open) {
        xSpeed = 0; 
        ySpeed = 0;
    }
	
    // Move
    x += xSpeed;
    y += ySpeed;

    // Sneak
    if (sneak >= 1000) {
        room_goto(BreakRoomLoose);
    }

   // Shoot
    // Shoot
    if (shoot) {
        // Set the bullet speed
        var bulletSpeed = 10;
        
        // Check for the spacebar key press
        if (keyboard_check_pressed(vk_space)) {
            // Calculate the bullet's direction based on the player's current facing direction
             direction = 0;
            
            if (face == RIGHT) 
			{
                direction = 0;
            } 
			
			else if (face == LEFT) 
			{
                direction = 180;
            } 
			
			else if (face == UP) {
                direction = 90;
            } 
			
			else if (face == DOWN) 
			{
                direction = 270;
            }
            
            // Convert the direction to radians
          //  direction = direction * degtorad;
        
            // Create a new bullet instance at the player's position
            var newBullet = instance_create_layer(x, y, "Instances", obj_bullet);
        
            // Set the bullet's direction and speed
            newBullet.direction = direction;
            newBullet.speed = bulletSpeed;
        }
    }
}


