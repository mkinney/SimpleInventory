// Create a variable that contains the type of item it will be.
// The item will be chosen at random from the types of items we have.
item_name = choose("Apple", "Banana", "Cherry");

// Naming them the same way they are named in their sprites 
// The second line chooses a sprite for the item based on the item name.
sprite_index = asset_get_index("s" + item_name);

