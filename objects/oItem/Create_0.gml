item_name = choose("Apple", "Banana", "Cherry");
sprite_index = asset_get_index("s" + item_name);

//^ This creates a variable that contains the type of item it will be. So
//  it will be chosen at random from the three type of items we have.
//  Naming them the same way they are named in their sprites 
//  The second line chooses a sprite for the item based on the item name.