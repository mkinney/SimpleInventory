// Mouse hover effect:
if (position_meeting(mouse_x, mouse_y, id)) {
	image_alpha = 0.8;
}
else {
	image_alpha = 1;
}

// Do something if mouse left button pressed:
if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	
    /* add your code here to do something. If you want different behavior
    depending on the type of item, you can do something like:
        if (item_id=="Apple") health+=10;
        else if (item_id=="Banana") {health+=20; armor+=10;}
        <else...>
    */

    // remove item from inventory list
	ds_list_delete(inv, inv_id);
	
    //deactivate menu and destroy buttons
    if (instance_exists(oButton)) {
		with (oButton) {
			instance_destroy();
		}
	}
	
	// deactivate menu
    oMenu.active = false;
}
