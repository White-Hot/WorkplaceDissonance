if (active = true)
{
	alarm[1] = 0;

// Boss movement
var player = instance_nearest(x, y, obj_Player);
if (player != noone) {
     //direction = point_direction(x, y, player.x, player.y);
    var moveSpeed = 1.2;  // Adjust this value as needed
    x += lengthdir_x(moveSpeed, direction);
    y += lengthdir_y(moveSpeed, direction);
}

// Boss shooting
if (shootDelay <= 0) {
    player = instance_nearest(x, y, obj_Player);
	
    if (player != noone) {
        direction = point_direction(x, y, player.x, player.y);
        var bullet = instance_create_layer(x, y, "Instances", obj_bulletBoss);
        bullet.direction = direction;
        bullet.speed = bulletSpeed;
    }
    shootDelay = 60;  // Reset the shooting delay
}
else {
    shootDelay--;  // Decrease the shooting delay
}
}

if (HP = 0)
{
	audio_stop_sound(bossSound);
	audio_play_sound(bossDie,1,false);
	moveSpeed = 0;
	sprite_index = sBossDeath;
	alarm[0] = 10;
	active = false;

}