/* 
  
/// obj_arrow_movement

// Set the speed at which the object moves
var move_speed = 5;

// Check for arrow key input and move the object accordingly
if (keyboard_check(vk_right)) {
    x += move_speed;
} else if (keyboard_check(vk_left)) {
    x -= move_speed;
}

if (keyboard_check(vk_down)) {
    y += move_speed;
} else if (keyboard_check(vk_up)) {
    y -= move_speed;
}

*/

x = mouse_x;
y = mouse_y;