var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var our_speed = 10;
var xx = 0;
var yy = 0;

// movement
if (right) {
	xx = x + our_speed;
}

if (left) {
	xx = x - our_speed;
}

if (up) {
	yy = y - our_speed;
}

if (down) {
	yy = y + our_speed;
}

// if there was movment desired, move the player (only within the screen)
var my_margin = sprite_width / 2;
if (xx != 0) {
	if ((xx > my_margin) && (xx < room_width - my_margin)) {
		x = xx;
	}
}

if (yy != 0) {
	if ((yy > my_margin) && (yy < room_height - my_margin)) {
		y = yy;
	}
}

// when you left click mouse, create a new object
if (mouse_check_button_pressed(mb_left)) {
	// as long as the menu is not active
	if (! oMenu.active) {
		instance_create_layer(mouse_x, mouse_y, "Instances", oItem);
	}
}