do_not_loop = false
global.collectibles = ds_map_create();
collecitlbes_check = undefined
// Initialize collectibles with names and unlocked status
global.collectibles[? "pickaxe"] = false;
global.collectibles[? "run from mirrors"] = false;
global.collectibles[? "feast of the red lynx"] = false;
global.collectibles[? "long way down"] = false;
global.collectibles[? "felt furnace"] = false;
global.collectibles[? "what comes after the dark"] = true;
global.collectibles[? "fated"] = false;
global.collectibles[? "ode ad mus real"] = false;
global.collectibles[? "unsavory cirtenty"] = false;
global.collectibles[? "tin man tales"] = false;
global.collectibles[? "chill spook"] = false;
global.collectibles[? "fresh off the beat"] = false;
global.collectibles[? "simple"] = false;
global.collectibles[? "through"] = false;
global.collectibles[? "sore eyes"] = false;
global.collectibles[? "intense on the fence"] = false;
global.collectibles[? "toxic lolllipop"] = false;
global.collectibles[? "harrowing halloween"] = false;
global.collectibles[? "pi chrome"] = false;
global.collectibles[? "fallowing"] = false;

collecitlbes_check = ds_map_secure_load("collectibles_save_file");

// Check if the file exists
if (file_exists("collectibles_save_file")) {
    if ds_map_exists(collecitlbes_check,"pickaxe"){
        global.collectibles = collecitlbes_check;
    }
} else {
    // If the file doesn't exist, create it
    if (ds_map_secure_save(global.collectibles, "collectibles_save_file")) {
        show_debug_message("New collectibles save file created.");
    } else {
        show_debug_message("Failed to create collectibles save file.");
    }
}

// Check if all collectibles are true
var allCollectiblesUnlocked = false;

// Loop through each entry in the global.collectibles ds_map
var key;
var value;
var collectiblesSize = ds_map_size(global.collectibles);

for (var i = 0; i < collectiblesSize; i++) {
    key = ds_map_find_first(global.collectibles);
    value = ds_map_find_value(global.collectibles, key);

    // Check if the value is false
    if (!value) {
        allCollectiblesUnlocked = false;
        break; // No need to continue checking if one is false
    }

    key = ds_map_find_next(global.collectibles, key);
}

// Check the result
if (allCollectiblesUnlocked) {
    do_not_loop = true;
}

// Save the collectibles
var saveFileName = "collectibles_save_file";
if (ds_map_secure_save(global.collectibles, saveFileName)) {
    show_debug_message("Collectibles saved successfully.");
} else {
    show_debug_message("Failed to save collectibles.");
}
