Game_over_solid_Inhariter.unlock_music = true
save_unlockable_collectible();
 show_debug_message("Entering the if loop to check collectibles.");
if global.achievements[1][3] = false {
   global.achievements[1][3] = true
}
instance_destroy();