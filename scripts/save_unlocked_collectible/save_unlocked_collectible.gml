                                            /// scr_set_random_collectible_true_and_save()

function save_unlockable_collectible() {
    if (coollecitlbe_music.do_not_loop == false) {
        var collectibleKeys = ds_map_keys_to_array(global.collectibles);
        var selectedCollectible = "";
        
     var foundFalse = false;
var allTrue = true;
var selectedCollectible = "";

// Check if any collectibles are already false
for (var i = 0; i < array_length_1d(collectibleKeys); i++) {
    var key = collectibleKeys[i];
    if (!global.collectibles[? key]) {
        foundFalse = true;
        selectedCollectible = key;
        allTrue = false; // At least one collectible is false
        show_debug_message("Found false collectible: " + key);
        break;
    }
}

// If all collectibles are already true, set allTrue to true
if (allTrue) {
	if global.achievements[6][3] = false {
	global.achievements[6][3] = true
}
    show_debug_message("All collectibles are already true.");
}

// If all collectibles are already true, increment the player score
if (allTrue) {
    global.player_score += 300;
    show_debug_message("Incrementing player score.");
} else {
    // Set the selected collectible to true
    global.collectibles[? selectedCollectible] = true;
    show_debug_message("Setting collectible '" + selectedCollectible + "' to true.");

    // Save the global.collectibles map to a file (adjust filename as needed)
    var saveFileName = "collectibles_save_file";
    if (ds_map_secure_save(global.collectibles, saveFileName)) {
        show_debug_message("Collectibles saved successfully.");
    } else {
        show_debug_message("Error saving collectibles.");
    }
}
	}
}