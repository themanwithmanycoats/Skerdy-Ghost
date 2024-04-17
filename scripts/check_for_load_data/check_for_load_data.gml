// This is a check for load data which will check for data to load into the file.
function check_for_load_data() {
    // Load high scores
    if (file_exists("high_scores.save")) {
        var _buffer_scores = buffer_load("high_scores.save");
        var _string_scores = buffer_read(_buffer_scores, buffer_string);
        buffer_delete(_buffer_scores);

        // Parse the JSON string into an array
        global.high_scores = json_parse(_string_scores);
        
        // If the loaded data is not an array, initialize it as an empty array
        if (!array_length_1d(global.high_scores)) {
            global.high_scores = array_create(10, 0); // Assuming you want an array of 10 elements initialized to 0
        }
    }
}
