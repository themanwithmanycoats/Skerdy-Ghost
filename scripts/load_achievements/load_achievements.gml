function load_achievements() {
    // Check if the save file exists
    if (!file_exists("save.sav")) {
        show_debug_message("Save file not found. Creating a new one.");

        // Save the global.achievements data to a new save file
        var file = file_text_open_write("save.sav");
        if (file != -1) {
            // Convert the global.achievements array to a JSON string
            var json_data = json_stringify(global.achievements);
            
            // Write the JSON data to the file
            file_text_write_string(file, json_data);
            
            // Close the file
            file_text_close(file);
            
            show_debug_message("New save file created and achievements saved.");
        } else {
            show_debug_message("Failed to create save file.");
        }
    } else {
        // Open the save file for reading
        var file = file_text_open_read("save.sav");
        if (file != -1) {
            // Read the JSON data from the file
            var json_data = file_text_read_string(file);
            
            // Close the file
            file_text_close(file);
            
            // Parse the JSON data into global.achievements array
            global.achievements = json_parse(json_data);
            
            show_debug_message("Achievements loaded successfully.");
        } else {
            show_debug_message("Failed to open save file for reading.");
        }
    }
}


