// When the item collides with the player, it will add its
// item_name to the inv list (which is the inventory) using ds_list_add().
// Then it destroys the item instance. (essentially "picking up the item")
if (place_meeting(x, y, oPlayer)){
    ds_list_add(inv, item_name);
    instance_destroy();
}

