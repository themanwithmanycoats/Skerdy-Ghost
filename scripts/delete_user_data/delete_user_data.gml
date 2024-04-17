// Function to delete all saved data including achievements
function delete_save_data() {
    // Delete individual player score save
    if (file_exists("savedgame.save")) {
        file_delete("savedgame.save");
        show_debug_message("Player score save data deleted");
    } else {
        show_debug_message("No player score save data found");
    }

    // Delete high scores save
    if (file_exists("high_scores.save")) {
        file_delete("high_scores.save");
        show_debug_message("High scores save data deleted");
        // Reset the high_scores array or handle it as needed after deletion
        global.high_scores = array_create(10, 0); // Assuming you want to reset it to an array of 10 elements initialized to 0
    } else {
        show_debug_message("No high scores save data found");
    }

    // Check if the global.collectibles DS map exists
    if (ds_map_exists(global.collectibles, true)) {
        // Destroy the DS map to remove all key-value pairs
        ds_map_destroy(global.collectibles);
        show_debug_message("Collectibles data deleted");
    } else {
        show_debug_message("No collectibles data found");
    }
    
    // Recreate the global.collectibles DS map
    global.collectibles = ds_map_create();
    
    // Save the empty DS map to the file
    ds_map_secure_save(global.collectibles, "collectibles_save_file");

  
// Check if the save file exists
if file_exists("save.sav") {
    // Delete the save file
    file_delete("save.sav");
    
    show_debug_message("Achievements save data deleted successfully.");
}
else {
    show_debug_message("No achievements save data found to delete.");
}

}
