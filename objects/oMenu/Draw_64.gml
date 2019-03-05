if (keyboard_check_pressed(vk_escape)) {
	active = !active;
} else {
	exit;
}

if (active) {
    var w=0
	var h=0;
	var buffer = 96;
	var offset = 32;
    for(var i = 0; i < ds_list_size(inv); i++) {
		// assigns item value and list item index to the button
		var btn = instance_create_layer(offset + (w * buffer), offset + (h * buffer), "Instances", oButton);
        btn.item_id = inv[| i];
        btn.inv_id = i;

        // moves to the next line if current one filled
        w++;
        if (w >= (floor(window_get_width() / buffer))){
            w = 0;
			h++;
        }
    }
} else {
	// if menu is deactivated, remove all buttons:
	if (instance_exists(oButton)){
		with (oButton) instance_destroy();
	}
}