/// save_achievements()

function check_for_save_achievements() {
    // Convert the global.achievements array to a JSON string
    var json_data = json_stringify(global.achievements);
    
    // Open the save file for writing
    var file = file_text_open_write("save.sav");
    if (file != -1) {
        // Write the JSON data to the file
        file_text_write_string(file, json_data);
        
        // Close the file
        file_text_close(file);
        
        show_debug_message("Achievements saved successfully.");
    } else {
        show_debug_message("Failed to open save file for writing.");
    }
}


